create table public.circlecitest1(catid smallint not null distkey sortkey,catgroup varchar(10),catname varchar(10),catdesc varchar(50));
copy public.circlecitest1 from 's3://redshifttestbucket/category_object_paths.json' credentials 'aws_iam_role=arn:aws:iam::181935492667:role/MyTestRedshiftRole' json 's3://redshifttestbucket/category_jsonpath.json';
select * from public.circlecitest1;