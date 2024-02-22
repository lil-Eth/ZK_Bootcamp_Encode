use array::ArrayTrait;
use serde::Serde;
use array::SpanTrait;

#[derive(Copy, Drop, Serde, PartialEq)]
enum Option<T> {
    Some: T,
    None,
}

trait OptionTrait<T> {
    /// If `val` is `Option::Some(x)`, returns `x`. Otherwise, panics with `err`.
    fn expect(self: Option<T>, err: felt252) -> T;
    /// If `val` is `Option::Some(x)`, returns `x`. Otherwise, panics.
    fn unwrap(self: Option<T>) -> T;
    /// Returns `true` if the `Option` is `Option::Some`.
    fn is_some(self: @Option<T>) -> bool;
    /// Returns `true` if the `Option` is `Option::None`.
    fn is_none(self: @Option<T>) -> bool;
}
impl OptionTraitImpl<T> of OptionTrait<T> {
    #[inline(always)]
    fn expect(self: Option<T>, err: felt252) -> T {
        match self {
            Option::Some(x) => x,
            Option::None => panic_with_felt252(err),
        }
    }
    #[inline(always)]
    fn unwrap(self: Option<T>) -> T {
        self.expect('Option::unwrap failed.')
    }
    #[inline(always)]
    fn is_some(self: @Option<T>) -> bool {
        match self {
            Option::Some(_) => true,
            Option::None => false,
        }
    }
    #[inline(always)]
    fn is_none(self: @Option<T>) -> bool {
        match self {
            Option::Some(_) => false,
            Option::None => true,
        }
    }
}