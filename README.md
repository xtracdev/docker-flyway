This Dockerfile produces a container that can be used to run flyway. This could
be useful in situations such as configuring a schema in a CI pipeline.

To run, include any volumes needed to locate the conf and migration files, and run
using standard arguments, e.g.

<pre>
docker run -v $PWD:/fwmnt xtracdev/flyway:4.0.3 -user=esdbo -password=password -locations=filesystem:/fwmnt/migration -configFile=/fwmnt/flyway.conf info
</pre>

To build the docker image, you need to copy in the Oracle JDBC jar ojdbc7.jar to this 
directory. You'll need to download the jdbc driver from Oracle. We are unable to distribute
the jar file because reasons.
