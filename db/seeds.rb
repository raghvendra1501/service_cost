# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# This data is being used for mapping aws regions to its associated names so that aws data can be mapped based on its region

aws_regions = [
  { region_code: 'us-east-2', region_name: 'US East (Ohio)' },
  { region_code: 'us-east-1', region_name: 'US East (N. Virginia)' },
  { region_code: 'us-west-1', region_name: 'US West (N. California)' },
  { region_code: 'us-west-2', region_name: 'US West (Oregon)' },
  { region_code: 'ap-east-1', region_name: 'Asia Pacific (Hong Kong)' },
  { region_code: 'ap-south-1', region_name: 'Asia Pacific (Mumbai)' },
  { region_code: 'ap-northeast-3', region_name: 'Asia Pacific (Osaka-Local)' },
  { region_code: 'ap-northeast-2', region_name: 'Asia Pacific (Seoul)' },
  { region_code: 'ap-southeast-1', region_name: 'Asia Pacific (Singapore)' },
  { region_code: 'ap-southeast-2', region_name: 'Asia Pacific (Sydney)' },
  { region_code: 'ap-northeast-1', region_name: 'Asia Pacific (Tokyo)' },
  { region_code: 'ca-central-1', region_name: 'Canada (Central)' },
  { region_code: 'eu-central-1', region_name: 'EU (Frankfurt)' },
  { region_code: 'eu-west-1', region_name: 'EU (Ireland)' },
  { region_code: 'eu-west-2', region_name: 'EU (London)' },
  { region_code: 'eu-west-3', region_name: 'EU (Paris)' },
  { region_code: 'me-south-1', region_name: 'Middle East (Bahrain)' },
  { region_code: 'sa-east-1', region_name: 'South America (São Paulo)' },
  { region_code: 'us-iso-east-1', region_name: 'US ISO East' },
  { region_code: 'eu-north-1', region_name: 'EU (Stockholm)' },
  { region_code: 'us-gov-east-1', region_name: 'AWS GovCloud (US-East)' },
  { region_code: 'us-gov-west-1', region_name: 'AWS GovCloud (US)' },
  { region_code: 'sa-east-1', region_name: 'South America (Sao Paulo)' },
  { region_code: 'cn-north-1', region_name: 'China (Beijing)' },
  { region_code: 'cn-northwest-1', region_name: 'China (Ningxia)' }
]

AwsRegion.create(aws_regions)
