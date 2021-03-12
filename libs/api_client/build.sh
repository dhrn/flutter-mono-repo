java -jar openapi-generator-cli-5.0.1.jar generate -i definition/alfresco-auth.yaml -g dart-dio -c open-generator-config.yaml --enable-post-process-file --skip-validate-spec
java -jar openapi-generator-cli-5.0.1.jar generate -i definition/alfresco-core.yaml -g dart-dio -c open-generator-config.yaml --enable-post-process-file --skip-validate-spec

flutter pub run build_runner build

dartfmt . -w --line-length=120
