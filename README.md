# Luis Periquito's blogs

This repository has all the code required to run the site [blogs.periquito.tech](https://blogs.periquito.tech).

This site is a simple static site hosted in AWS S3, and served by cloudfront. The code will take care of creating all the required resources and set them up.

There are 2 S3 buckets, one (private) for the TF state file, and the other (public) to host the static files.

The code also creates the ACM (Amazon Certificate) using DNS validation (requires a separate DNS entry creation in the zone).

It also creates the required cloudfront entries. It will output the cloudfront name, which will be required to create the DNS CNAME to point to the correct entry for the site to work.

I could use route53 to host the whole DNS zone, however I prefered to use a different solution, and have all the entried being automatically managed by TF.

As the state file is being managed inside a bucket created in the terraform code there is a bit of a chicken-and-egg situation. So just had to create the bucket and then import it to the state.
