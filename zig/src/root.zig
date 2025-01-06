const std = @import("std");
const testing = std.testing;
const json = @import("json/parser.zig");
const helper = @import("helper.zig");
test "i_number_double_huge_neg_exp.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_number_double_huge_neg_exp.json"));
}
test "i_number_huge_exp.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_number_huge_exp.json"));
}
test "i_number_neg_int_huge_exp.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_number_neg_int_huge_exp.json"));
}
test "i_number_pos_double_huge_exp.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_number_pos_double_huge_exp.json"));
}
test "i_number_real_neg_overflow.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_number_real_neg_overflow.json"));
}
test "i_number_real_pos_overflow.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_number_real_pos_overflow.json"));
}
test "i_number_real_underflow.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_number_real_underflow.json"));
}
test "i_number_too_big_neg_int.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_number_too_big_neg_int.json"));
}
test "i_number_too_big_pos_int.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_number_too_big_pos_int.json"));
}
test "i_number_very_big_negative_int.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_number_very_big_negative_int.json"));
}
test "i_object_key_lone_2nd_surrogate.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_object_key_lone_2nd_surrogate.json"));
}
test "i_string_1st_surrogate_but_2nd_missing.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_1st_surrogate_but_2nd_missing.json"));
}
test "i_string_1st_valid_surrogate_2nd_invalid.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_1st_valid_surrogate_2nd_invalid.json"));
}
test "i_string_incomplete_surrogates_escape_valid.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_incomplete_surrogates_escape_valid.json"));
}
test "i_string_incomplete_surrogate_and_escape_valid.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_incomplete_surrogate_and_escape_valid.json"));
}
test "i_string_incomplete_surrogate_pair.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_incomplete_surrogate_pair.json"));
}
test "i_string_invalid_lonely_surrogate.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_invalid_lonely_surrogate.json"));
}
test "i_string_invalid_surrogate.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_invalid_surrogate.json"));
}
test "i_string_invalid_utf-8.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_invalid_utf-8.json"));
}
test "i_string_inverted_surrogates_U+1D11E.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_inverted_surrogates_U+1D11E.json"));
}
test "i_string_iso_latin_1.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_iso_latin_1.json"));
}
test "i_string_lone_second_surrogate.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_lone_second_surrogate.json"));
}
test "i_string_lone_utf8_continuation_byte.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_lone_utf8_continuation_byte.json"));
}
test "i_string_not_in_unicode_range.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_not_in_unicode_range.json"));
}
test "i_string_overlong_sequence_2_bytes.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_overlong_sequence_2_bytes.json"));
}
test "i_string_overlong_sequence_6_bytes.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_overlong_sequence_6_bytes.json"));
}
test "i_string_overlong_sequence_6_bytes_null.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_overlong_sequence_6_bytes_null.json"));
}
test "i_string_truncated-utf-8.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_truncated-utf-8.json"));
}
test "i_string_UTF-16LE_with_BOM.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_UTF-16LE_with_BOM.json"));
}
test "i_string_UTF-8_invalid_sequence.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_UTF-8_invalid_sequence.json"));
}
test "i_string_utf16BE_no_BOM.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_utf16BE_no_BOM.json"));
}
test "i_string_utf16LE_no_BOM.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_utf16LE_no_BOM.json"));
}
test "i_string_UTF8_surrogate_U+D800.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_string_UTF8_surrogate_U+D800.json"));
}
test "i_structure_500_nested_arrays.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_structure_500_nested_arrays.json"));
}
test "i_structure_UTF-8_BOM_empty_object.json" {
    try testing.expect(try helper.runTest(testing.allocator, "i_structure_UTF-8_BOM_empty_object.json"));
}
test "n_array_1_true_without_comma.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_1_true_without_comma.json"));
}
test "n_array_a_invalid_utf8.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_a_invalid_utf8.json"));
}
test "n_array_colon_instead_of_comma.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_colon_instead_of_comma.json"));
}
test "n_array_comma_after_close.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_comma_after_close.json"));
}
test "n_array_comma_and_number.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_comma_and_number.json"));
}
test "n_array_double_comma.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_double_comma.json"));
}
test "n_array_double_extra_comma.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_double_extra_comma.json"));
}
test "n_array_extra_close.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_extra_close.json"));
}
test "n_array_extra_comma.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_extra_comma.json"));
}
test "n_array_incomplete.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_incomplete.json"));
}
test "n_array_incomplete_invalid_value.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_incomplete_invalid_value.json"));
}
test "n_array_inner_array_no_comma.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_inner_array_no_comma.json"));
}
test "n_array_invalid_utf8.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_invalid_utf8.json"));
}
test "n_array_items_separated_by_semicolon.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_items_separated_by_semicolon.json"));
}
test "n_array_just_comma.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_just_comma.json"));
}
test "n_array_just_minus.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_just_minus.json"));
}
test "n_array_missing_value.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_missing_value.json"));
}
test "n_array_newlines_unclosed.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_newlines_unclosed.json"));
}
test "n_array_number_and_comma.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_number_and_comma.json"));
}
test "n_array_number_and_several_commas.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_number_and_several_commas.json"));
}
test "n_array_spaces_vertical_tab_formfeed.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_spaces_vertical_tab_formfeed.json"));
}
test "n_array_star_inside.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_star_inside.json"));
}
test "n_array_unclosed.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_unclosed.json"));
}
test "n_array_unclosed_trailing_comma.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_unclosed_trailing_comma.json"));
}
test "n_array_unclosed_with_new_lines.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_unclosed_with_new_lines.json"));
}
test "n_array_unclosed_with_object_inside.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_array_unclosed_with_object_inside.json"));
}
test "n_incomplete_false.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_incomplete_false.json"));
}
test "n_incomplete_null.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_incomplete_null.json"));
}
test "n_incomplete_true.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_incomplete_true.json"));
}
test "n_multidigit_number_then_00.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_multidigit_number_then_00.json"));
}
test "n_number_++.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_++.json"));
}
test "n_number_+1.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_+1.json"));
}
test "n_number_+Inf.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_+Inf.json"));
}
test "n_number_-01.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_-01.json"));
}
test "n_number_-1.0..json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_-1.0..json"));
}
test "n_number_-2..json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_-2..json"));
}
test "n_number_-NaN.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_-NaN.json"));
}
test "n_number_.-1.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_.-1.json"));
}
test "n_number_.2e-3.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_.2e-3.json"));
}
test "n_number_0.1.2.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_0.1.2.json"));
}
test "n_number_0.3e+.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_0.3e+.json"));
}
test "n_number_0.3e.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_0.3e.json"));
}
test "n_number_0.e1.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_0.e1.json"));
}
test "n_number_0e+.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_0e+.json"));
}
test "n_number_0e.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_0e.json"));
}
test "n_number_0_capital_E+.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_0_capital_E+.json"));
}
test "n_number_0_capital_E.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_0_capital_E.json"));
}
test "n_number_1.0e+.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_1.0e+.json"));
}
test "n_number_1.0e-.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_1.0e-.json"));
}
test "n_number_1.0e.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_1.0e.json"));
}
test "n_number_1eE2.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_1eE2.json"));
}
test "n_number_1_000.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_1_000.json"));
}
test "n_number_2.e+3.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_2.e+3.json"));
}
test "n_number_2.e-3.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_2.e-3.json"));
}
test "n_number_2.e3.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_2.e3.json"));
}
test "n_number_9.e+.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_9.e+.json"));
}
test "n_number_expression.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_expression.json"));
}
test "n_number_hex_1_digit.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_hex_1_digit.json"));
}
test "n_number_hex_2_digits.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_hex_2_digits.json"));
}
test "n_number_Inf.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_Inf.json"));
}
test "n_number_infinity.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_infinity.json"));
}
test "n_number_invalid+-.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_invalid+-.json"));
}
test "n_number_invalid-negative-real.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_invalid-negative-real.json"));
}
test "n_number_invalid-utf-8-in-bigger-int.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_invalid-utf-8-in-bigger-int.json"));
}
test "n_number_invalid-utf-8-in-exponent.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_invalid-utf-8-in-exponent.json"));
}
test "n_number_invalid-utf-8-in-int.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_invalid-utf-8-in-int.json"));
}
test "n_number_minus_infinity.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_minus_infinity.json"));
}
test "n_number_minus_sign_with_trailing_garbage.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_minus_sign_with_trailing_garbage.json"));
}
test "n_number_minus_space_1.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_minus_space_1.json"));
}
test "n_number_NaN.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_NaN.json"));
}
test "n_number_neg_int_starting_with_zero.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_neg_int_starting_with_zero.json"));
}
test "n_number_neg_real_without_int_part.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_neg_real_without_int_part.json"));
}
test "n_number_neg_with_garbage_at_end.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_neg_with_garbage_at_end.json"));
}
test "n_number_real_garbage_after_e.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_real_garbage_after_e.json"));
}
test "n_number_real_without_fractional_part.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_real_without_fractional_part.json"));
}
test "n_number_real_with_invalid_utf8_after_e.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_real_with_invalid_utf8_after_e.json"));
}
test "n_number_starting_with_dot.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_starting_with_dot.json"));
}
test "n_number_U+FF11_fullwidth_digit_one.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_U+FF11_fullwidth_digit_one.json"));
}
test "n_number_with_alpha.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_with_alpha.json"));
}
test "n_number_with_alpha_char.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_with_alpha_char.json"));
}
test "n_number_with_leading_zero.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_number_with_leading_zero.json"));
}
test "n_object_bad_value.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_bad_value.json"));
}
test "n_object_bracket_key.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_bracket_key.json"));
}
test "n_object_comma_instead_of_colon.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_comma_instead_of_colon.json"));
}
test "n_object_double_colon.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_double_colon.json"));
}
test "n_object_emoji.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_emoji.json"));
}
test "n_object_garbage_at_end.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_garbage_at_end.json"));
}
test "n_object_key_with_single_quotes.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_key_with_single_quotes.json"));
}
test "n_object_lone_continuation_byte_in_key_and_trailing_comma.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_lone_continuation_byte_in_key_and_trailing_comma.json"));
}
test "n_object_missing_colon.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_missing_colon.json"));
}
test "n_object_missing_key.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_missing_key.json"));
}
test "n_object_missing_semicolon.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_missing_semicolon.json"));
}
test "n_object_missing_value.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_missing_value.json"));
}
test "n_object_no-colon.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_no-colon.json"));
}
test "n_object_non_string_key.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_non_string_key.json"));
}
test "n_object_non_string_key_but_huge_number_instead.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_non_string_key_but_huge_number_instead.json"));
}
test "n_object_repeated_null_null.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_repeated_null_null.json"));
}
test "n_object_several_trailing_commas.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_several_trailing_commas.json"));
}
test "n_object_single_quote.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_single_quote.json"));
}
test "n_object_trailing_comma.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_trailing_comma.json"));
}
test "n_object_trailing_comment.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_trailing_comment.json"));
}
test "n_object_trailing_comment_open.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_trailing_comment_open.json"));
}
test "n_object_trailing_comment_slash_open.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_trailing_comment_slash_open.json"));
}
test "n_object_trailing_comment_slash_open_incomplete.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_trailing_comment_slash_open_incomplete.json"));
}
test "n_object_two_commas_in_a_row.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_two_commas_in_a_row.json"));
}
test "n_object_unquoted_key.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_unquoted_key.json"));
}
test "n_object_unterminated-value.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_unterminated-value.json"));
}
test "n_object_with_single_string.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_with_single_string.json"));
}
test "n_object_with_trailing_garbage.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_object_with_trailing_garbage.json"));
}
test "n_single_space.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_single_space.json"));
}
test "n_string_1_surrogate_then_escape.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_1_surrogate_then_escape.json"));
}
test "n_string_1_surrogate_then_escape_u.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_1_surrogate_then_escape_u.json"));
}
test "n_string_1_surrogate_then_escape_u1.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_1_surrogate_then_escape_u1.json"));
}
test "n_string_1_surrogate_then_escape_u1x.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_1_surrogate_then_escape_u1x.json"));
}
test "n_string_accentuated_char_no_quotes.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_accentuated_char_no_quotes.json"));
}
test "n_string_backslash_00.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_backslash_00.json"));
}
test "n_string_escaped_backslash_bad.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_escaped_backslash_bad.json"));
}
test "n_string_escaped_ctrl_char_tab.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_escaped_ctrl_char_tab.json"));
}
test "n_string_escaped_emoji.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_escaped_emoji.json"));
}
test "n_string_escape_x.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_escape_x.json"));
}
test "n_string_incomplete_escape.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_incomplete_escape.json"));
}
test "n_string_incomplete_escaped_character.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_incomplete_escaped_character.json"));
}
test "n_string_incomplete_surrogate.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_incomplete_surrogate.json"));
}
test "n_string_incomplete_surrogate_escape_invalid.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_incomplete_surrogate_escape_invalid.json"));
}
test "n_string_invalid-utf-8-in-escape.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_invalid-utf-8-in-escape.json"));
}
test "n_string_invalid_backslash_esc.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_invalid_backslash_esc.json"));
}
test "n_string_invalid_unicode_escape.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_invalid_unicode_escape.json"));
}
test "n_string_invalid_utf8_after_escape.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_invalid_utf8_after_escape.json"));
}
test "n_string_leading_uescaped_thinspace.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_leading_uescaped_thinspace.json"));
}
test "n_string_no_quotes_with_bad_escape.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_no_quotes_with_bad_escape.json"));
}
test "n_string_single_doublequote.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_single_doublequote.json"));
}
test "n_string_single_quote.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_single_quote.json"));
}
test "n_string_single_string_no_double_quotes.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_single_string_no_double_quotes.json"));
}
test "n_string_start_escape_unclosed.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_start_escape_unclosed.json"));
}
test "n_string_unescaped_ctrl_char.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_unescaped_ctrl_char.json"));
}
test "n_string_unescaped_newline.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_unescaped_newline.json"));
}
test "n_string_unescaped_tab.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_unescaped_tab.json"));
}
test "n_string_unicode_CapitalU.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_unicode_CapitalU.json"));
}
test "n_string_with_trailing_garbage.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_string_with_trailing_garbage.json"));
}
test "n_structure_100000_opening_arrays.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_100000_opening_arrays.json"));
}
test "n_structure_angle_bracket_..json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_angle_bracket_..json"));
}
test "n_structure_angle_bracket_null.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_angle_bracket_null.json"));
}
test "n_structure_array_trailing_garbage.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_array_trailing_garbage.json"));
}
test "n_structure_array_with_extra_array_close.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_array_with_extra_array_close.json"));
}
test "n_structure_array_with_unclosed_string.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_array_with_unclosed_string.json"));
}
test "n_structure_ascii-unicode-identifier.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_ascii-unicode-identifier.json"));
}
test "n_structure_capitalized_True.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_capitalized_True.json"));
}
test "n_structure_close_unopened_array.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_close_unopened_array.json"));
}
test "n_structure_comma_instead_of_closing_brace.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_comma_instead_of_closing_brace.json"));
}
test "n_structure_double_array.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_double_array.json"));
}
test "n_structure_end_array.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_end_array.json"));
}
test "n_structure_incomplete_UTF8_BOM.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_incomplete_UTF8_BOM.json"));
}
test "n_structure_lone-invalid-utf-8.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_lone-invalid-utf-8.json"));
}
test "n_structure_lone-open-bracket.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_lone-open-bracket.json"));
}
test "n_structure_no_data.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_no_data.json"));
}
test "n_structure_null-byte-outside-string.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_null-byte-outside-string.json"));
}
test "n_structure_number_with_trailing_garbage.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_number_with_trailing_garbage.json"));
}
test "n_structure_object_followed_by_closing_object.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_object_followed_by_closing_object.json"));
}
test "n_structure_object_unclosed_no_value.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_object_unclosed_no_value.json"));
}
test "n_structure_object_with_comment.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_object_with_comment.json"));
}
test "n_structure_object_with_trailing_garbage.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_object_with_trailing_garbage.json"));
}
test "n_structure_open_array_apostrophe.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_open_array_apostrophe.json"));
}
test "n_structure_open_array_comma.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_open_array_comma.json"));
}
test "n_structure_open_array_object.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_open_array_object.json"));
}
test "n_structure_open_array_open_object.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_open_array_open_object.json"));
}
test "n_structure_open_array_open_string.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_open_array_open_string.json"));
}
test "n_structure_open_array_string.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_open_array_string.json"));
}
test "n_structure_open_object.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_open_object.json"));
}
test "n_structure_open_object_close_array.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_open_object_close_array.json"));
}
test "n_structure_open_object_comma.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_open_object_comma.json"));
}
test "n_structure_open_object_open_array.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_open_object_open_array.json"));
}
test "n_structure_open_object_open_string.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_open_object_open_string.json"));
}
test "n_structure_open_object_string_with_apostrophes.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_open_object_string_with_apostrophes.json"));
}
test "n_structure_open_open.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_open_open.json"));
}
test "n_structure_single_eacute.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_single_eacute.json"));
}
test "n_structure_single_star.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_single_star.json"));
}
test "n_structure_trailing_#.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_trailing_#.json"));
}
test "n_structure_U+2060_word_joined.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_U+2060_word_joined.json"));
}
test "n_structure_uescaped_LF_before_string.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_uescaped_LF_before_string.json"));
}
test "n_structure_unclosed_array.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_unclosed_array.json"));
}
test "n_structure_unclosed_array_partial_null.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_unclosed_array_partial_null.json"));
}
test "n_structure_unclosed_array_unfinished_false.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_unclosed_array_unfinished_false.json"));
}
test "n_structure_unclosed_array_unfinished_true.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_unclosed_array_unfinished_true.json"));
}
test "n_structure_unclosed_object.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_unclosed_object.json"));
}
test "n_structure_unicode-identifier.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_unicode-identifier.json"));
}
test "n_structure_UTF8_BOM_no_data.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_UTF8_BOM_no_data.json"));
}
test "n_structure_whitespace_formfeed.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_whitespace_formfeed.json"));
}
test "n_structure_whitespace_U+2060_word_joiner.json" {
    try testing.expect(try helper.runTest(testing.allocator, "n_structure_whitespace_U+2060_word_joiner.json"));
}
test "y_array_arraysWithSpaces.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_array_arraysWithSpaces.json"));
}
test "y_array_empty-string.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_array_empty-string.json"));
}
test "y_array_empty.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_array_empty.json"));
}
test "y_array_ending_with_newline.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_array_ending_with_newline.json"));
}
test "y_array_false.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_array_false.json"));
}
test "y_array_heterogeneous.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_array_heterogeneous.json"));
}
test "y_array_null.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_array_null.json"));
}
test "y_array_with_1_and_newline.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_array_with_1_and_newline.json"));
}
test "y_array_with_leading_space.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_array_with_leading_space.json"));
}
test "y_array_with_several_null.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_array_with_several_null.json"));
}
test "y_array_with_trailing_space.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_array_with_trailing_space.json"));
}
test "y_number.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number.json"));
}
test "y_number_0e+1.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_0e+1.json"));
}
test "y_number_0e1.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_0e1.json"));
}
test "y_number_after_space.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_after_space.json"));
}
test "y_number_double_close_to_zero.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_double_close_to_zero.json"));
}
test "y_number_int_with_exp.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_int_with_exp.json"));
}
test "y_number_minus_zero.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_minus_zero.json"));
}
test "y_number_negative_int.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_negative_int.json"));
}
test "y_number_negative_one.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_negative_one.json"));
}
test "y_number_negative_zero.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_negative_zero.json"));
}
test "y_number_real_capital_e.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_real_capital_e.json"));
}
test "y_number_real_capital_e_neg_exp.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_real_capital_e_neg_exp.json"));
}
test "y_number_real_capital_e_pos_exp.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_real_capital_e_pos_exp.json"));
}
test "y_number_real_exponent.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_real_exponent.json"));
}
test "y_number_real_fraction_exponent.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_real_fraction_exponent.json"));
}
test "y_number_real_neg_exp.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_real_neg_exp.json"));
}
test "y_number_real_pos_exponent.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_real_pos_exponent.json"));
}
test "y_number_simple_int.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_simple_int.json"));
}
test "y_number_simple_real.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_number_simple_real.json"));
}
test "y_object.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_object.json"));
}
test "y_object_basic.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_object_basic.json"));
}
test "y_object_duplicated_key.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_object_duplicated_key.json"));
}
test "y_object_duplicated_key_and_value.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_object_duplicated_key_and_value.json"));
}
test "y_object_empty.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_object_empty.json"));
}
test "y_object_empty_key.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_object_empty_key.json"));
}
test "y_object_escaped_null_in_key.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_object_escaped_null_in_key.json"));
}
test "y_object_extreme_numbers.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_object_extreme_numbers.json"));
}
test "y_object_long_strings.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_object_long_strings.json"));
}
test "y_object_simple.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_object_simple.json"));
}
test "y_object_string_unicode.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_object_string_unicode.json"));
}
test "y_object_with_newlines.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_object_with_newlines.json"));
}
test "y_string_1_2_3_bytes_UTF-8_sequences.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_1_2_3_bytes_UTF-8_sequences.json"));
}
test "y_string_accepted_surrogate_pair.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_accepted_surrogate_pair.json"));
}
test "y_string_accepted_surrogate_pairs.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_accepted_surrogate_pairs.json"));
}
test "y_string_allowed_escapes.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_allowed_escapes.json"));
}
test "y_string_backslash_and_u_escaped_zero.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_backslash_and_u_escaped_zero.json"));
}
test "y_string_backslash_doublequotes.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_backslash_doublequotes.json"));
}
test "y_string_comments.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_comments.json"));
}
test "y_string_double_escape_a.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_double_escape_a.json"));
}
test "y_string_double_escape_n.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_double_escape_n.json"));
}
test "y_string_escaped_control_character.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_escaped_control_character.json"));
}
test "y_string_escaped_noncharacter.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_escaped_noncharacter.json"));
}
test "y_string_in_array.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_in_array.json"));
}
test "y_string_in_array_with_leading_space.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_in_array_with_leading_space.json"));
}
test "y_string_last_surrogates_1_and_2.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_last_surrogates_1_and_2.json"));
}
test "y_string_nbsp_uescaped.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_nbsp_uescaped.json"));
}
test "y_string_nonCharacterInUTF-8_U+10FFFF.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_nonCharacterInUTF-8_U+10FFFF.json"));
}
test "y_string_nonCharacterInUTF-8_U+FFFF.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_nonCharacterInUTF-8_U+FFFF.json"));
}
test "y_string_null_escape.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_null_escape.json"));
}
test "y_string_one-byte-utf-8.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_one-byte-utf-8.json"));
}
test "y_string_pi.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_pi.json"));
}
test "y_string_reservedCharacterInUTF-8_U+1BFFF.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_reservedCharacterInUTF-8_U+1BFFF.json"));
}
test "y_string_simple_ascii.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_simple_ascii.json"));
}
test "y_string_space.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_space.json"));
}
test "y_string_surrogates_U+1D11E_MUSICAL_SYMBOL_G_CLEF.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_surrogates_U+1D11E_MUSICAL_SYMBOL_G_CLEF.json"));
}
test "y_string_three-byte-utf-8.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_three-byte-utf-8.json"));
}
test "y_string_two-byte-utf-8.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_two-byte-utf-8.json"));
}
test "y_string_u+2028_line_sep.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_u+2028_line_sep.json"));
}
test "y_string_u+2029_par_sep.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_u+2029_par_sep.json"));
}
test "y_string_uEscape.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_uEscape.json"));
}
test "y_string_uescaped_newline.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_uescaped_newline.json"));
}
test "y_string_unescaped_char_delete.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_unescaped_char_delete.json"));
}
test "y_string_unicode.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_unicode.json"));
}
test "y_string_unicodeEscapedBackslash.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_unicodeEscapedBackslash.json"));
}
test "y_string_unicode_2.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_unicode_2.json"));
}
test "y_string_unicode_escaped_double_quote.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_unicode_escaped_double_quote.json"));
}
test "y_string_unicode_U+10FFFE_nonchar.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_unicode_U+10FFFE_nonchar.json"));
}
test "y_string_unicode_U+1FFFE_nonchar.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_unicode_U+1FFFE_nonchar.json"));
}
test "y_string_unicode_U+200B_ZERO_WIDTH_SPACE.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_unicode_U+200B_ZERO_WIDTH_SPACE.json"));
}
test "y_string_unicode_U+2064_invisible_plus.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_unicode_U+2064_invisible_plus.json"));
}
test "y_string_unicode_U+FDD0_nonchar.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_unicode_U+FDD0_nonchar.json"));
}
test "y_string_unicode_U+FFFE_nonchar.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_unicode_U+FFFE_nonchar.json"));
}
test "y_string_utf8.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_utf8.json"));
}
test "y_string_with_del_character.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_string_with_del_character.json"));
}
test "y_structure_lonely_false.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_structure_lonely_false.json"));
}
test "y_structure_lonely_int.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_structure_lonely_int.json"));
}
test "y_structure_lonely_negative_real.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_structure_lonely_negative_real.json"));
}
test "y_structure_lonely_null.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_structure_lonely_null.json"));
}
test "y_structure_lonely_string.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_structure_lonely_string.json"));
}
test "y_structure_lonely_true.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_structure_lonely_true.json"));
}
test "y_structure_string_empty.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_structure_string_empty.json"));
}
test "y_structure_trailing_newline.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_structure_trailing_newline.json"));
}
test "y_structure_true_in_array.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_structure_true_in_array.json"));
}
test "y_structure_whitespace_array.json" {
    try testing.expect(try helper.runTest(testing.allocator, "y_structure_whitespace_array.json"));
}
