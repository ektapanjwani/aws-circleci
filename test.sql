truncate table public.circlecitest_lambda3
copy public.circlecitest_lambda3 from 's3://redshifttestbucket/category_object_paths.json' credentials 'aws_iam_role=arn:aws:iam::181935492667:role/MyTestRedshiftRole' json 's3://redshifttestbucket/category_jsonpath.json';
select * from public.circlecitest_lambda3;
