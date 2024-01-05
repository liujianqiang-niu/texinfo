#! /bin/sh
# This file generated by maintain/regenerate_cmd_tests.sh

if test z"$srcdir" = "z"; then
  srcdir=.
fi

one_test_logs_dir=test_log



if test "z$OTHER_TESTS" != z"yes"; then
  echo "Skipping other tests that are not easily reproducible"
  exit 77
fi

dir=other
name='highlight_syntax_example_pygments'
mkdir -p $dir

"$srcdir"/run_parser_all.sh -dir $dir $name
exit_status=$?
cat $dir/$one_test_logs_dir/$name.log
exit $exit_status

