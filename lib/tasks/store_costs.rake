require 'net/http'
namespace :store_costs do
  desc 'Store AWS Cloudfront Pricing'
  task update_rates: :environment do
    # url = URI('https://pricing.us-east-1.amazonaws.com/offers/v1.0/aws/AmazonCloudFront/current/index.json')
    # res = Net::HTTP.get_response(url)
    # if res.is_a?(Net::HTTPSuccess)
      a = '{
        "formatVersion" : "v1.0",
        "disclaimer" : "This pricing list is for informational purposes only. All prices are subject to the additional terms included in the pricing pages on http://aws.amazon.com. All Free Tier prices are also subject to the terms included at https://aws.amazon.com/free/",
        "offerCode" : "AmazonCloudFront",
        "version" : "20191219230750",
        "publicationDate" : "2019-12-19T23:07:50Z",
        "products" : {
          "RN2BPS8XT2GYJ4UF" : {
            "sku" : "RN2BPS8XT2GYJ4UF",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "EU (Paris)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "EUW3-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "NPFD6SEH9MXS8M4J" : {
            "sku" : "NPFD6SEH9MXS8M4J",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "United States",
              "locationType" : "AWS Edge Location",
              "usagetype" : "US-Requests-Tier2-HTTPS",
              "operation" : "",
              "requestDescription" : "HTTPS GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier2",
              "servicename" : "Amazon CloudFront"
            }
          },
          "78833EM5YM3WXMT5" : {
            "sku" : "78833EM5YM3WXMT5",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "US West (Oregon)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "USW2-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "GV2WFGX37Q9PDSHF" : {
            "sku" : "GV2WFGX37Q9PDSHF",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront Outbound",
              "fromLocation" : "United States",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "External",
              "toLocationType" : "Other",
              "usagetype" : "US-DataTransfer-Out-Bytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "6DSK78RX8E8ZV684" : {
            "sku" : "6DSK78RX8E8ZV684",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Europe",
              "locationType" : "AWS Edge Location",
              "usagetype" : "EU-Requests-HTTPS-Proxy",
              "operation" : "",
              "requestDescription" : "HTTPS DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTPS-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "SVZFZ38G2S8MZT2D" : {
            "sku" : "SVZFZ38G2S8MZT2D",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "South Africa",
              "locationType" : "AWS Edge Location",
              "usagetype" : "ZA-Requests-HTTPS-Proxy-FLE",
              "operation" : "",
              "requestDescription" : "HTTPS Proxy requests with Field Level Encryption",
              "requestType" : "CloudFront-Request-HTTPS-Proxy-Field-Level-Encryption",
              "servicename" : "Amazon CloudFront"
            }
          },
          "SW89832HP7DYZ3CG" : {
            "sku" : "SW89832HP7DYZ3CG",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "EU (London)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "EUW2-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "PMVMEYDK8MT2WW79" : {
            "sku" : "PMVMEYDK8MT2WW79",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "South America",
              "locationType" : "AWS Edge Location",
              "usagetype" : "SA-Requests-HTTPS-Proxy",
              "operation" : "",
              "requestDescription" : "HTTPS DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTPS-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "U3HVZF9WJEM7TE55" : {
            "sku" : "U3HVZF9WJEM7TE55",
            "productFamily" : "Fee",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "group" : "CF-Invalidations",
              "groupDescription" : "Charge for invalidating objects (removing the objects from CloudFront edge locations)",
              "usagetype" : "Invalidations",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "U8P37H38743VG7RS" : {
            "sku" : "U8P37H38743VG7RS",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront to Origin",
              "fromLocation" : "Asia Pacific",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "Data Origin",
              "toLocationType" : "Other",
              "usagetype" : "AP-DataTransfer-Out-OBytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "UFDGFF3QDVACBTWG" : {
            "sku" : "UFDGFF3QDVACBTWG",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "US ISO East",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "UIE1-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "SKMJ5UEE99K42C3T" : {
            "sku" : "SKMJ5UEE99K42C3T",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Middle East",
              "locationType" : "AWS Edge Location",
              "usagetype" : "ME-Requests-HTTPS-Proxy",
              "operation" : "",
              "requestDescription" : "HTTPS DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTPS-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "7KPB3NBC6BDZ4CUW" : {
            "sku" : "7KPB3NBC6BDZ4CUW",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Asia Pacific (Seoul)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "APN2-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "CAA6U9M5GG47PBJH" : {
            "sku" : "CAA6U9M5GG47PBJH",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "EU (Stockholm)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "EUN1-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "DBGSFNJ3SZ63XQKN" : {
            "sku" : "DBGSFNJ3SZ63XQKN",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "South Africa",
              "locationType" : "AWS Edge Location",
              "usagetype" : "ZA-Requests-Tier1",
              "operation" : "",
              "requestDescription" : "HTTP GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier1",
              "servicename" : "Amazon CloudFront"
            }
          },
          "33TJJBQAQBNCMAE5" : {
            "sku" : "33TJJBQAQBNCMAE5",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "US West (Oregon)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "USW2-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "RF9BND9U35ZKRAWD" : {
            "sku" : "RF9BND9U35ZKRAWD",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "AWS GovCloud (US-East)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "UGE1-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "2NF7ZQE9WFAJR53Q" : {
            "sku" : "2NF7ZQE9WFAJR53Q",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "South America (Sao Paulo)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "SAE1-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "6J62KXVUTY288CJX" : {
            "sku" : "6J62KXVUTY288CJX",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Asia Pacific",
              "locationType" : "AWS Edge Location",
              "usagetype" : "AP-Requests-HTTPS-Proxy",
              "operation" : "",
              "requestDescription" : "HTTPS DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTPS-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "FT3ZW8ZWC7R64T4M" : {
            "sku" : "FT3ZW8ZWC7R64T4M",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "EU (Frankfurt)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "EUC1-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "SFU45WD2UEM4A5NA" : {
            "sku" : "SFU45WD2UEM4A5NA",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Asia Pacific",
              "locationType" : "AWS Edge Location",
              "usagetype" : "AP-Requests-Tier1",
              "operation" : "",
              "requestDescription" : "HTTP GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier1",
              "servicename" : "Amazon CloudFront"
            }
          },
          "J8ZEVBEAPSXMB5BA" : {
            "sku" : "J8ZEVBEAPSXMB5BA",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Asia Pacific (Hong Kong)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "APE1-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "3R2FUPWJ2VYY9GAN" : {
            "sku" : "3R2FUPWJ2VYY9GAN",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront to Origin",
              "fromLocation" : "Japan",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "Data Origin",
              "toLocationType" : "Other",
              "usagetype" : "JP-DataTransfer-Out-OBytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "2PABFNWY9BSSH478" : {
            "sku" : "2PABFNWY9BSSH478",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Asia Pacific (Seoul)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "APN2-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "FZ8U6AWT2BMH7T8F" : {
            "sku" : "FZ8U6AWT2BMH7T8F",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront to Origin",
              "fromLocation" : "South America",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "Data Origin",
              "toLocationType" : "Other",
              "usagetype" : "SA-DataTransfer-Out-OBytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "PM8VDVBNS4JXN75X" : {
            "sku" : "PM8VDVBNS4JXN75X",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Asia Pacific (Mumbai)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "APS3-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "272YGRMFJS3Z4CKG" : {
            "sku" : "272YGRMFJS3Z4CKG",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront to Origin",
              "fromLocation" : "South Africa",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "Data Origin",
              "toLocationType" : "Other",
              "usagetype" : "ZA-DataTransfer-Out-OBytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "6BUV4Q6NJACEB5XG" : {
            "sku" : "6BUV4Q6NJACEB5XG",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "EU (Frankfurt)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "EUC1-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "8JNNPNBQD9DSHV5K" : {
            "sku" : "8JNNPNBQD9DSHV5K",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront Outbound",
              "fromLocation" : "Australia",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "External",
              "toLocationType" : "Other",
              "usagetype" : "AU-DataTransfer-Out-Bytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "74J7CHZC7AJ7ZSQQ" : {
            "sku" : "74J7CHZC7AJ7ZSQQ",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "China (Beijing)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "CNN1-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "8N3CV9APGUFMVJ2B" : {
            "sku" : "8N3CV9APGUFMVJ2B",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "AWS GovCloud (US)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "UGW1-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "NTMFPCBFRPVVZD7S" : {
            "sku" : "NTMFPCBFRPVVZD7S",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "South America",
              "locationType" : "AWS Edge Location",
              "usagetype" : "SA-Requests-HTTP-Proxy",
              "operation" : "",
              "requestDescription" : "HTTP DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTP-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "84Z32PF576RHPTMX" : {
            "sku" : "84Z32PF576RHPTMX",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront Outbound",
              "fromLocation" : "South Africa",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "External",
              "toLocationType" : "Other",
              "usagetype" : "ZA-DataTransfer-Out-Bytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "C3HHMR3U9CR9AK63" : {
            "sku" : "C3HHMR3U9CR9AK63",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront to Origin",
              "fromLocation" : "Europe",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "Data Origin",
              "toLocationType" : "Other",
              "usagetype" : "EU-DataTransfer-Out-OBytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "78WBDMMUMU9U8T6A" : {
            "sku" : "78WBDMMUMU9U8T6A",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront to Origin",
              "fromLocation" : "Australia",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "Data Origin",
              "toLocationType" : "Other",
              "usagetype" : "AU-DataTransfer-Out-OBytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "9Y9B6NV8MWSGD6RA" : {
            "sku" : "9Y9B6NV8MWSGD6RA",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "EU (Ireland)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "EU-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "MVRQ6SWP7QQGC255" : {
            "sku" : "MVRQ6SWP7QQGC255",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Canada (Central)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "CAN1-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "MEYM8PH2BWE8AEWC" : {
            "sku" : "MEYM8PH2BWE8AEWC",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "US ISO East",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "UIE1-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "ZT3N6V49SHDM9P3G" : {
            "sku" : "ZT3N6V49SHDM9P3G",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront Outbound",
              "fromLocation" : "South America",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "External",
              "toLocationType" : "Other",
              "usagetype" : "SA-DataTransfer-Out-Bytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "DBWJ2RCZ59TXJ29D" : {
            "sku" : "DBWJ2RCZ59TXJ29D",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Asia Pacific (Hong Kong)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "APE1-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "W6KHTEW6VCKTZFTR" : {
            "sku" : "W6KHTEW6VCKTZFTR",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Asia Pacific",
              "locationType" : "AWS Edge Location",
              "usagetype" : "AP-Requests-Tier2-HTTPS",
              "operation" : "",
              "requestDescription" : "HTTPS GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier2",
              "servicename" : "Amazon CloudFront"
            }
          },
          "MUDWTDSXBQTNZ7KT" : {
            "sku" : "MUDWTDSXBQTNZ7KT",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "South America (Sao Paulo)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "SAE1-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "PZRBP77D3SW5RU5P" : {
            "sku" : "PZRBP77D3SW5RU5P",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Middle East",
              "locationType" : "AWS Edge Location",
              "usagetype" : "ME-Requests-Tier1",
              "operation" : "",
              "requestDescription" : "HTTP GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier1",
              "servicename" : "Amazon CloudFront"
            }
          },
          "GTNGTASZWM5Y2YH6" : {
            "sku" : "GTNGTASZWM5Y2YH6",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Australia",
              "locationType" : "AWS Edge Location",
              "usagetype" : "AU-Requests-HTTP-Proxy",
              "operation" : "",
              "requestDescription" : "HTTP DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTP-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "KQCH34CJC2U3CFQY" : {
            "sku" : "KQCH34CJC2U3CFQY",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Middle East",
              "locationType" : "AWS Edge Location",
              "usagetype" : "ME-Requests-HTTP-Proxy",
              "operation" : "",
              "requestDescription" : "HTTP DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTP-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "UH5MRG7QT9XX6YBP" : {
            "sku" : "UH5MRG7QT9XX6YBP",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "US East (N. Virginia)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "VSPNBX8HMCZBUJEP" : {
            "sku" : "VSPNBX8HMCZBUJEP",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "China (Beijing)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "CNN1-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "STAW4JYR23PMGDK7" : {
            "sku" : "STAW4JYR23PMGDK7",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "South Africa",
              "locationType" : "AWS Edge Location",
              "usagetype" : "ZA-Requests-Tier2-HTTPS",
              "operation" : "",
              "requestDescription" : "HTTPS GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier2",
              "servicename" : "Amazon CloudFront"
            }
          },
          "R5NDBF38K3GVAYYG" : {
            "sku" : "R5NDBF38K3GVAYYG",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Asia Pacific (Tokyo)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "APN1-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "W5Z79UDE6RKXCRMP" : {
            "sku" : "W5Z79UDE6RKXCRMP",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "South America",
              "locationType" : "AWS Edge Location",
              "usagetype" : "SA-Requests-Tier1",
              "operation" : "",
              "requestDescription" : "HTTP GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier1",
              "servicename" : "Amazon CloudFront"
            }
          },
          "NBZ4CN4FF3UJYS5U" : {
            "sku" : "NBZ4CN4FF3UJYS5U",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Canada",
              "locationType" : "AWS Edge Location",
              "usagetype" : "CA-Requests-HTTP-Proxy",
              "operation" : "",
              "requestDescription" : "HTTP DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTP-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "YAZJTS7BBDWNETCD" : {
            "sku" : "YAZJTS7BBDWNETCD",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "US West (N. California)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "USW1-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "FUWQBJC8EW2AP9J4" : {
            "sku" : "FUWQBJC8EW2AP9J4",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "South America",
              "locationType" : "AWS Edge Location",
              "usagetype" : "SA-Requests-Tier2-HTTPS",
              "operation" : "",
              "requestDescription" : "HTTPS GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier2",
              "servicename" : "Amazon CloudFront"
            }
          },
          "VDPZYE3674YDGVPU" : {
            "sku" : "VDPZYE3674YDGVPU",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "India",
              "locationType" : "AWS Edge Location",
              "usagetype" : "IN-Requests-HTTPS-Proxy",
              "operation" : "",
              "requestDescription" : "HTTPS DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTPS-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "VU3485RNDU6HBQF6" : {
            "sku" : "VU3485RNDU6HBQF6",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront Outbound",
              "fromLocation" : "Europe",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "External",
              "toLocationType" : "Other",
              "usagetype" : "EU-DataTransfer-Out-Bytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "YA5QZD7XG45UGHCH" : {
            "sku" : "YA5QZD7XG45UGHCH",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Europe",
              "locationType" : "AWS Edge Location",
              "usagetype" : "EU-Requests-Tier2-HTTPS",
              "operation" : "",
              "requestDescription" : "HTTPS GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier2",
              "servicename" : "Amazon CloudFront"
            }
          },
          "DCX5PSWXNPZDK63Q" : {
            "sku" : "DCX5PSWXNPZDK63Q",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "United States",
              "locationType" : "AWS Edge Location",
              "usagetype" : "US-Requests-HTTPS-Proxy",
              "operation" : "",
              "requestDescription" : "HTTPS DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTPS-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "PNXA2DMMYWR3R73F" : {
            "sku" : "PNXA2DMMYWR3R73F",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Asia Pacific (Singapore)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "APS1-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "ZB3BQW3UAPZBVRPZ" : {
            "sku" : "ZB3BQW3UAPZBVRPZ",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "EU (Ireland)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "EU-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "NJD45NCV7D7JXRXJ" : {
            "sku" : "NJD45NCV7D7JXRXJ",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "United States",
              "locationType" : "AWS Edge Location",
              "usagetype" : "US-Requests-Tier1",
              "operation" : "",
              "requestDescription" : "HTTP GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier1",
              "servicename" : "Amazon CloudFront"
            }
          },
          "XMD65YTJR2D93PDJ" : {
            "sku" : "XMD65YTJR2D93PDJ",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Asia Pacific (Sydney)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "APS2-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "36NP94WQXKD2BEH5" : {
            "sku" : "36NP94WQXKD2BEH5",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "India",
              "locationType" : "AWS Edge Location",
              "usagetype" : "IN-Requests-HTTPS-Proxy-FLE",
              "operation" : "",
              "requestDescription" : "HTTPS Proxy requests with Field Level Encryption",
              "requestType" : "CloudFront-Request-HTTPS-Proxy-Field-Level-Encryption",
              "servicename" : "Amazon CloudFront"
            }
          },
          "4ENKM5T6A6T9QPD2" : {
            "sku" : "4ENKM5T6A6T9QPD2",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Europe",
              "locationType" : "AWS Edge Location",
              "usagetype" : "EU-Requests-HTTPS-Proxy-FLE",
              "operation" : "",
              "requestDescription" : "HTTPS Proxy requests with Field Level Encryption",
              "requestType" : "CloudFront-Request-HTTPS-Proxy-Field-Level-Encryption",
              "servicename" : "Amazon CloudFront"
            }
          },
          "9MS5ZWGYNFR5NURG" : {
            "sku" : "9MS5ZWGYNFR5NURG",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Europe",
              "locationType" : "AWS Edge Location",
              "usagetype" : "EU-Requests-Tier1",
              "operation" : "",
              "requestDescription" : "HTTP GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier1",
              "servicename" : "Amazon CloudFront"
            }
          },
          "ZG984ETY8SNCPH2B" : {
            "sku" : "ZG984ETY8SNCPH2B",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Canada",
              "locationType" : "AWS Edge Location",
              "usagetype" : "CA-Requests-Tier2-HTTPS",
              "operation" : "",
              "requestDescription" : "HTTPS GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier2",
              "servicename" : "Amazon CloudFront"
            }
          },
          "9HPM7YEKYRSM3BY4" : {
            "sku" : "9HPM7YEKYRSM3BY4",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "AWS GovCloud (US)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "UGW1-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "SUYUX3YD9AB7U6US" : {
            "sku" : "SUYUX3YD9AB7U6US",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "United States",
              "locationType" : "AWS Edge Location",
              "usagetype" : "US-Requests-HTTP-Proxy",
              "operation" : "",
              "requestDescription" : "HTTP DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTP-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "UCNM6SMX7DQFG5N7" : {
            "sku" : "UCNM6SMX7DQFG5N7",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "South Africa",
              "locationType" : "AWS Edge Location",
              "usagetype" : "ZA-Requests-HTTPS-Proxy",
              "operation" : "",
              "requestDescription" : "HTTPS DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTPS-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "QW9DRRBUB3Y64FJZ" : {
            "sku" : "QW9DRRBUB3Y64FJZ",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "India",
              "locationType" : "AWS Edge Location",
              "usagetype" : "IN-Requests-Tier1",
              "operation" : "",
              "requestDescription" : "HTTP GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier1",
              "servicename" : "Amazon CloudFront"
            }
          },
          "UTWW52RE2H4MPK23" : {
            "sku" : "UTWW52RE2H4MPK23",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Middle East (Bahrain)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "MES1-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "CG6SPBTASWBFEZ88" : {
            "sku" : "CG6SPBTASWBFEZ88",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "US West (N. California)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "USW1-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "4ZKPCBHJ6DH3YZKY" : {
            "sku" : "4ZKPCBHJ6DH3YZKY",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Japan",
              "locationType" : "AWS Edge Location",
              "usagetype" : "JP-Requests-Tier1",
              "operation" : "",
              "requestDescription" : "HTTP GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier1",
              "servicename" : "Amazon CloudFront"
            }
          },
          "62FMXYC43CP8KPXW" : {
            "sku" : "62FMXYC43CP8KPXW",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Japan",
              "locationType" : "AWS Edge Location",
              "usagetype" : "JP-Requests-HTTPS-Proxy",
              "operation" : "",
              "requestDescription" : "HTTPS DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTPS-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "2RU96X5GXXQ62U7Q" : {
            "sku" : "2RU96X5GXXQ62U7Q",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront to Origin",
              "fromLocation" : "Middle East",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "Data Origin",
              "toLocationType" : "Other",
              "usagetype" : "ME-DataTransfer-Out-OBytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "JYWBAKWR4AVKH8DT" : {
            "sku" : "JYWBAKWR4AVKH8DT",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Australia",
              "locationType" : "AWS Edge Location",
              "usagetype" : "AU-Requests-Tier1",
              "operation" : "",
              "requestDescription" : "HTTP GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier1",
              "servicename" : "Amazon CloudFront"
            }
          },
          "TA7VH9EF7Y6QX7Q2" : {
            "sku" : "TA7VH9EF7Y6QX7Q2",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Asia Pacific (Singapore)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "APS1-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "29K2E4HBJAYXK2EK" : {
            "sku" : "29K2E4HBJAYXK2EK",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Canada",
              "locationType" : "AWS Edge Location",
              "usagetype" : "CA-Requests-Tier1",
              "operation" : "",
              "requestDescription" : "HTTP GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier1",
              "servicename" : "Amazon CloudFront"
            }
          },
          "2NC4ZCXUPXRR3MMW" : {
            "sku" : "2NC4ZCXUPXRR3MMW",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Asia Pacific",
              "locationType" : "AWS Edge Location",
              "usagetype" : "AP-Requests-HTTPS-Proxy-FLE",
              "operation" : "",
              "requestDescription" : "HTTPS Proxy requests with Field Level Encryption",
              "requestType" : "CloudFront-Request-HTTPS-Proxy-Field-Level-Encryption",
              "servicename" : "Amazon CloudFront"
            }
          },
          "HPYSX4844A2F5TD9" : {
            "sku" : "HPYSX4844A2F5TD9",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "EU (London)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "EUW2-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "9BETCR5FAVJ6V76R" : {
            "sku" : "9BETCR5FAVJ6V76R",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Middle East",
              "locationType" : "AWS Edge Location",
              "usagetype" : "ME-Requests-Tier2-HTTPS",
              "operation" : "",
              "requestDescription" : "HTTPS GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier2",
              "servicename" : "Amazon CloudFront"
            }
          },
          "GHWRYTRYJH9FREQB" : {
            "sku" : "GHWRYTRYJH9FREQB",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "US East (Ohio)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "USE2-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "XVZYVSAH88373VKR" : {
            "sku" : "XVZYVSAH88373VKR",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront Outbound",
              "fromLocation" : "India",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "External",
              "toLocationType" : "Other",
              "usagetype" : "IN-DataTransfer-Out-Bytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "AGSZEF5XC2MG4FUH" : {
            "sku" : "AGSZEF5XC2MG4FUH",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront to Origin",
              "fromLocation" : "United States",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "Data Origin",
              "toLocationType" : "Other",
              "usagetype" : "US-DataTransfer-Out-OBytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "KJKQCFWRY9KUWY4S" : {
            "sku" : "KJKQCFWRY9KUWY4S",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront Outbound",
              "fromLocation" : "Middle East",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "External",
              "toLocationType" : "Other",
              "usagetype" : "ME-DataTransfer-Out-Bytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "R7XJDKRNTBXEMJRP" : {
            "sku" : "R7XJDKRNTBXEMJRP",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "South Africa",
              "locationType" : "AWS Edge Location",
              "usagetype" : "ZA-Requests-HTTP-Proxy",
              "operation" : "",
              "requestDescription" : "HTTP DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTP-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "EWY8FRNGUCT82ZWQ" : {
            "sku" : "EWY8FRNGUCT82ZWQ",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "China (Ningxia)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "CNW1-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "YR9KNSXHQ8YZU3RU" : {
            "sku" : "YR9KNSXHQ8YZU3RU",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront to Origin",
              "fromLocation" : "India",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "Data Origin",
              "toLocationType" : "Other",
              "usagetype" : "IN-DataTransfer-Out-OBytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "FK9TNZUQ2YPXXDWP" : {
            "sku" : "FK9TNZUQ2YPXXDWP",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "South America",
              "locationType" : "AWS Edge Location",
              "usagetype" : "SA-Requests-HTTPS-Proxy-FLE",
              "operation" : "",
              "requestDescription" : "HTTPS Proxy requests with Field Level Encryption",
              "requestType" : "CloudFront-Request-HTTPS-Proxy-Field-Level-Encryption",
              "servicename" : "Amazon CloudFront"
            }
          },
          "QY3BQE47QTETZ49M" : {
            "sku" : "QY3BQE47QTETZ49M",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Canada",
              "locationType" : "AWS Edge Location",
              "usagetype" : "CA-Requests-HTTPS-Proxy-FLE",
              "operation" : "",
              "requestDescription" : "HTTPS Proxy requests with Field Level Encryption",
              "requestType" : "CloudFront-Request-HTTPS-Proxy-Field-Level-Encryption",
              "servicename" : "Amazon CloudFront"
            }
          },
          "2HPGFMFR4R8MYDJV" : {
            "sku" : "2HPGFMFR4R8MYDJV",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Asia Pacific",
              "locationType" : "AWS Edge Location",
              "usagetype" : "AP-Requests-HTTP-Proxy",
              "operation" : "",
              "requestDescription" : "HTTP DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTP-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "GJTTXSYXV43ANXTQ" : {
            "sku" : "GJTTXSYXV43ANXTQ",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "India",
              "locationType" : "AWS Edge Location",
              "usagetype" : "IN-Requests-Tier2-HTTPS",
              "operation" : "",
              "requestDescription" : "HTTPS GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier2",
              "servicename" : "Amazon CloudFront"
            }
          },
          "XCRNU3Y2GKCYSQKZ" : {
            "sku" : "XCRNU3Y2GKCYSQKZ",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Canada",
              "locationType" : "AWS Edge Location",
              "usagetype" : "CA-Requests-HTTPS-Proxy",
              "operation" : "",
              "requestDescription" : "HTTPS DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTPS-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "QACAAGRH4G2FVQW7" : {
            "sku" : "QACAAGRH4G2FVQW7",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Asia Pacific (Mumbai)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "APS3-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "B7PPPKA28K3F827S" : {
            "sku" : "B7PPPKA28K3F827S",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Middle East",
              "locationType" : "AWS Edge Location",
              "usagetype" : "ME-Requests-HTTPS-Proxy-FLE",
              "operation" : "",
              "requestDescription" : "HTTPS Proxy requests with Field Level Encryption",
              "requestType" : "CloudFront-Request-HTTPS-Proxy-Field-Level-Encryption",
              "servicename" : "Amazon CloudFront"
            }
          },
          "NKFHQCWX54SD3MPK" : {
            "sku" : "NKFHQCWX54SD3MPK",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Asia Pacific (Sydney)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "APS2-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "XB79AHC8SZ754YG3" : {
            "sku" : "XB79AHC8SZ754YG3",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "United States",
              "locationType" : "AWS Edge Location",
              "usagetype" : "US-Requests-HTTPS-Proxy-FLE",
              "operation" : "",
              "requestDescription" : "HTTPS Proxy requests with Field Level Encryption",
              "requestType" : "CloudFront-Request-HTTPS-Proxy-Field-Level-Encryption",
              "servicename" : "Amazon CloudFront"
            }
          },
          "QUEZ7XDZJJXURBU7" : {
            "sku" : "QUEZ7XDZJJXURBU7",
            "productFamily" : "Fee",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "group" : "CF-SSL-Cert-Custom",
              "groupDescription" : "Charge for using an SSL certificate with a CloudFront alternate domain name",
              "usagetype" : "SSL-Cert-Custom",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "NZ4NVSNUH8BS2X2Z" : {
            "sku" : "NZ4NVSNUH8BS2X2Z",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Japan",
              "locationType" : "AWS Edge Location",
              "usagetype" : "JP-Requests-HTTP-Proxy",
              "operation" : "",
              "requestDescription" : "HTTP DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTP-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "MA5MA7NZ72QR35RX" : {
            "sku" : "MA5MA7NZ72QR35RX",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "India",
              "locationType" : "AWS Edge Location",
              "usagetype" : "IN-Requests-HTTP-Proxy",
              "operation" : "",
              "requestDescription" : "HTTP DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTP-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "NU6RX88N2CYBCXUJ" : {
            "sku" : "NU6RX88N2CYBCXUJ",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "EU (Paris)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "EUW3-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "CME9BRJSS2F5PBYE" : {
            "sku" : "CME9BRJSS2F5PBYE",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront Outbound",
              "fromLocation" : "Japan",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "External",
              "toLocationType" : "Other",
              "usagetype" : "JP-DataTransfer-Out-Bytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "PD5DWTZFHSSQH4CD" : {
            "sku" : "PD5DWTZFHSSQH4CD",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Australia",
              "locationType" : "AWS Edge Location",
              "usagetype" : "AU-Requests-HTTPS-Proxy-FLE",
              "operation" : "",
              "requestDescription" : "HTTPS Proxy requests with Field Level Encryption",
              "requestType" : "CloudFront-Request-HTTPS-Proxy-Field-Level-Encryption",
              "servicename" : "Amazon CloudFront"
            }
          },
          "P9JPS8B69E4GFGZZ" : {
            "sku" : "P9JPS8B69E4GFGZZ",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "China (Ningxia)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "CNW1-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "GBZF22PZM223EGZZ" : {
            "sku" : "GBZF22PZM223EGZZ",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "EU (Stockholm)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "EUN1-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "A86N9S7CGUKZHH8P" : {
            "sku" : "A86N9S7CGUKZHH8P",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront Outbound",
              "fromLocation" : "Asia Pacific",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "External",
              "toLocationType" : "Other",
              "usagetype" : "AP-DataTransfer-Out-Bytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "EJZT492VM8J2VQTQ" : {
            "sku" : "EJZT492VM8J2VQTQ",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Japan",
              "locationType" : "AWS Edge Location",
              "usagetype" : "JP-Requests-Tier2-HTTPS",
              "operation" : "",
              "requestDescription" : "HTTPS GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier2",
              "servicename" : "Amazon CloudFront"
            }
          },
          "4V34MN2EVACKUWTK" : {
            "sku" : "4V34MN2EVACKUWTK",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Australia",
              "locationType" : "AWS Edge Location",
              "usagetype" : "AU-Requests-HTTPS-Proxy",
              "operation" : "",
              "requestDescription" : "HTTPS DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTPS-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "2EA5PDPGTS67B5H7" : {
            "sku" : "2EA5PDPGTS67B5H7",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "US East (Ohio)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "USE2-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "R8AAUQRQANXB3JJD" : {
            "sku" : "R8AAUQRQANXB3JJD",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Middle East (Bahrain)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "MES1-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "YNZW9TGPQWEQM4JS" : {
            "sku" : "YNZW9TGPQWEQM4JS",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront Outbound",
              "fromLocation" : "Canada",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "External",
              "toLocationType" : "Other",
              "usagetype" : "CA-DataTransfer-Out-Bytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "PN592W3XFEHYAJER" : {
            "sku" : "PN592W3XFEHYAJER",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "US East (N. Virginia)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "RKTZW6A9KBYCNJ5S" : {
            "sku" : "RKTZW6A9KBYCNJ5S",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Japan",
              "locationType" : "AWS Edge Location",
              "usagetype" : "JP-Requests-HTTPS-Proxy-FLE",
              "operation" : "",
              "requestDescription" : "HTTPS Proxy requests with Field Level Encryption",
              "requestType" : "CloudFront-Request-HTTPS-Proxy-Field-Level-Encryption",
              "servicename" : "Amazon CloudFront"
            }
          },
          "B6F5HP6FXAFTNWPC" : {
            "sku" : "B6F5HP6FXAFTNWPC",
            "productFamily" : "Data Transfer",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "transferType" : "CloudFront to Origin",
              "fromLocation" : "Canada",
              "fromLocationType" : "AWS Edge Location",
              "toLocation" : "Data Origin",
              "toLocationType" : "Other",
              "usagetype" : "CA-DataTransfer-Out-OBytes",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "A9Q42669TT5XQMRW" : {
            "sku" : "A9Q42669TT5XQMRW",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Canada (Central)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "CAN1-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "8AH7WHHPAA452VWV" : {
            "sku" : "8AH7WHHPAA452VWV",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Asia Pacific (Tokyo)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Duration",
              "groupDescription" : "Invocation duration weighted by memory assigned to function, measured in GB-s",
              "usagetype" : "APN1-Lambda-Edge-GB-Second",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          },
          "XXEA4SCG9TSQCDF2" : {
            "sku" : "XXEA4SCG9TSQCDF2",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Australia",
              "locationType" : "AWS Edge Location",
              "usagetype" : "AU-Requests-Tier2-HTTPS",
              "operation" : "",
              "requestDescription" : "HTTPS GET and HEAD requests",
              "requestType" : "CloudFront-Request-Tier2",
              "servicename" : "Amazon CloudFront"
            }
          },
          "XD7ZDAECJ2BPHRKJ" : {
            "sku" : "XD7ZDAECJ2BPHRKJ",
            "productFamily" : "Request",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "Europe",
              "locationType" : "AWS Edge Location",
              "usagetype" : "EU-Requests-HTTP-Proxy",
              "operation" : "",
              "requestDescription" : "HTTP DELETE, OPTIONS, PATCH, POST, and PUT requests that CloudFront forwards to your origin",
              "requestType" : "CloudFront-Request-HTTP-Proxy",
              "servicename" : "Amazon CloudFront"
            }
          },
          "CYHNW9MJYBF8UUJY" : {
            "sku" : "CYHNW9MJYBF8UUJY",
            "productFamily" : "Serverless",
            "attributes" : {
              "servicecode" : "AmazonCloudFront",
              "location" : "AWS GovCloud (US-East)",
              "locationType" : "AWS Region",
              "group" : "AWS-Lambda-Edge-Requests",
              "groupDescription" : "Invocation call for a Lambda function",
              "usagetype" : "UGE1-Lambda-Edge-Request",
              "operation" : "",
              "servicename" : "Amazon CloudFront"
            }
          }
        },
        "terms" : {
          "OnDemand" : {
            "RN2BPS8XT2GYJ4UF" : {
              "RN2BPS8XT2GYJ4UF.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "RN2BPS8XT2GYJ4UF",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "RN2BPS8XT2GYJ4UF.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "RN2BPS8XT2GYJ4UF.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in EU (Paris)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "NPFD6SEH9MXS8M4J" : {
              "NPFD6SEH9MXS8M4J.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "NPFD6SEH9MXS8M4J",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "NPFD6SEH9MXS8M4J.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "NPFD6SEH9MXS8M4J.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0100 per 10,000 HTTPS Requests",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000010000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "78833EM5YM3WXMT5" : {
              "78833EM5YM3WXMT5.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "78833EM5YM3WXMT5",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "78833EM5YM3WXMT5.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "78833EM5YM3WXMT5.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in US West (Oregon)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "GV2WFGX37Q9PDSHF" : {
              "GV2WFGX37Q9PDSHF.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "GV2WFGX37Q9PDSHF",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "GV2WFGX37Q9PDSHF.JRTCKXETXF.VF6T3GAUKQ" : {
                    "rateCode" : "GV2WFGX37Q9PDSHF.JRTCKXETXF.VF6T3GAUKQ",
                    "description" : "$0.080 per GB - next 40 TB / month data transfer out",
                    "beginRange" : "10240",
                    "endRange" : "51200",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0800000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "GV2WFGX37Q9PDSHF.JRTCKXETXF.3B9CK5AZ6J" : {
                    "rateCode" : "GV2WFGX37Q9PDSHF.JRTCKXETXF.3B9CK5AZ6J",
                    "description" : "$0.030 per GB - next 524 TB / month data transfer out",
                    "beginRange" : "512000",
                    "endRange" : "1048576",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0300000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "GV2WFGX37Q9PDSHF.JRTCKXETXF.SW9U2ZKBYX" : {
                    "rateCode" : "GV2WFGX37Q9PDSHF.JRTCKXETXF.SW9U2ZKBYX",
                    "description" : "$0.020 per GB - data transfer out / month over 5 PB",
                    "beginRange" : "5242880",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0200000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "GV2WFGX37Q9PDSHF.JRTCKXETXF.RBMR72YW69" : {
                    "rateCode" : "GV2WFGX37Q9PDSHF.JRTCKXETXF.RBMR72YW69",
                    "description" : "$0.025 per GB - next 4 PB / month data transfer out",
                    "beginRange" : "1048576",
                    "endRange" : "5242880",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0250000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "GV2WFGX37Q9PDSHF.JRTCKXETXF.AZ7GJS7NVF" : {
                    "rateCode" : "GV2WFGX37Q9PDSHF.JRTCKXETXF.AZ7GJS7NVF",
                    "description" : "$0.040 per GB - next 350 TB / month data transfer out",
                    "beginRange" : "153600",
                    "endRange" : "512000",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0400000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "GV2WFGX37Q9PDSHF.JRTCKXETXF.N9EW5UVVPA" : {
                    "rateCode" : "GV2WFGX37Q9PDSHF.JRTCKXETXF.N9EW5UVVPA",
                    "description" : "$0.060 per GB - next 100 TB / month data transfer out",
                    "beginRange" : "51200",
                    "endRange" : "153600",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0600000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "GV2WFGX37Q9PDSHF.JRTCKXETXF.Q3Z75P77EN" : {
                    "rateCode" : "GV2WFGX37Q9PDSHF.JRTCKXETXF.Q3Z75P77EN",
                    "description" : "$0.085 per GB - first 10 TB / month data transfer out",
                    "beginRange" : "0",
                    "endRange" : "10240",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0850000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "6DSK78RX8E8ZV684" : {
              "6DSK78RX8E8ZV684.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "6DSK78RX8E8ZV684",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "6DSK78RX8E8ZV684.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "6DSK78RX8E8ZV684.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0120 per 10,000 Proxy HTTPS Requests (Europe)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000012000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "SVZFZ38G2S8MZT2D" : {
              "SVZFZ38G2S8MZT2D.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "SVZFZ38G2S8MZT2D",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "SVZFZ38G2S8MZT2D.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "SVZFZ38G2S8MZT2D.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.02 per 10,000 Proxy HTTPS Field Level Encryption Requests (South Africa)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000020000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "SW89832HP7DYZ3CG" : {
              "SW89832HP7DYZ3CG.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "SW89832HP7DYZ3CG",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "SW89832HP7DYZ3CG.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "SW89832HP7DYZ3CG.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in EU (London)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "PMVMEYDK8MT2WW79" : {
              "PMVMEYDK8MT2WW79.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "PMVMEYDK8MT2WW79",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "PMVMEYDK8MT2WW79.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "PMVMEYDK8MT2WW79.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0220 per 10,000 Proxy HTTPS Requests (South America)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000022000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "U3HVZF9WJEM7TE55" : {
              "U3HVZF9WJEM7TE55.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "U3HVZF9WJEM7TE55",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "U3HVZF9WJEM7TE55.JRTCKXETXF.MUBTP6UPGZ" : {
                    "rateCode" : "U3HVZF9WJEM7TE55.JRTCKXETXF.MUBTP6UPGZ",
                    "description" : "$0.005 per URL - over 1,000 URLs / month.",
                    "beginRange" : "1000",
                    "endRange" : "Inf",
                    "unit" : "URL",
                    "pricePerUnit" : {
                      "USD" : "0.0050000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "U3HVZF9WJEM7TE55.JRTCKXETXF.JXGPBPHWFF" : {
                    "rateCode" : "U3HVZF9WJEM7TE55.JRTCKXETXF.JXGPBPHWFF",
                    "description" : "$0.000 per URL - first 1,000 URLs / month.",
                    "beginRange" : "0",
                    "endRange" : "1000",
                    "unit" : "URL",
                    "pricePerUnit" : {
                      "USD" : "0.0000000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "U8P37H38743VG7RS" : {
              "U8P37H38743VG7RS.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "U8P37H38743VG7RS",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "U8P37H38743VG7RS.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "U8P37H38743VG7RS.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.060 per GB - All data transfer out to Origin (Asia)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0600000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "UFDGFF3QDVACBTWG" : {
              "UFDGFF3QDVACBTWG.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "UFDGFF3QDVACBTWG",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "UFDGFF3QDVACBTWG.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "UFDGFF3QDVACBTWG.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in US ISO East",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "SKMJ5UEE99K42C3T" : {
              "SKMJ5UEE99K42C3T.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "SKMJ5UEE99K42C3T",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "SKMJ5UEE99K42C3T.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "SKMJ5UEE99K42C3T.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0120 per 10,000 Proxy HTTPS Requests (Middle East)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000012000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "7KPB3NBC6BDZ4CUW" : {
              "7KPB3NBC6BDZ4CUW.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "7KPB3NBC6BDZ4CUW",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "7KPB3NBC6BDZ4CUW.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "7KPB3NBC6BDZ4CUW.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in Asia Pacific (Seoul)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "CAA6U9M5GG47PBJH" : {
              "CAA6U9M5GG47PBJH.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "CAA6U9M5GG47PBJH",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "CAA6U9M5GG47PBJH.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "CAA6U9M5GG47PBJH.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in EU (Stockholm)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "DBGSFNJ3SZ63XQKN" : {
              "DBGSFNJ3SZ63XQKN.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "DBGSFNJ3SZ63XQKN",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "DBGSFNJ3SZ63XQKN.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "DBGSFNJ3SZ63XQKN.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0090 per 10,000 HTTP Requests",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000009000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "33TJJBQAQBNCMAE5" : {
              "33TJJBQAQBNCMAE5.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "33TJJBQAQBNCMAE5",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "33TJJBQAQBNCMAE5.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "33TJJBQAQBNCMAE5.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in US West (Oregon)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "RF9BND9U35ZKRAWD" : {
              "RF9BND9U35ZKRAWD.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "RF9BND9U35ZKRAWD",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "RF9BND9U35ZKRAWD.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "RF9BND9U35ZKRAWD.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in AWS GovCloud (US-East)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "2NF7ZQE9WFAJR53Q" : {
              "2NF7ZQE9WFAJR53Q.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "2NF7ZQE9WFAJR53Q",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "2NF7ZQE9WFAJR53Q.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "2NF7ZQE9WFAJR53Q.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in South America (Sao Paulo)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "6J62KXVUTY288CJX" : {
              "6J62KXVUTY288CJX.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "6J62KXVUTY288CJX",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "6J62KXVUTY288CJX.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "6J62KXVUTY288CJX.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0120 per 10,000 Proxy HTTPS Requests (Asia)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000012000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "FT3ZW8ZWC7R64T4M" : {
              "FT3ZW8ZWC7R64T4M.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "FT3ZW8ZWC7R64T4M",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "FT3ZW8ZWC7R64T4M.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "FT3ZW8ZWC7R64T4M.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in EU (Frankfurt)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "SFU45WD2UEM4A5NA" : {
              "SFU45WD2UEM4A5NA.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "SFU45WD2UEM4A5NA",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "SFU45WD2UEM4A5NA.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "SFU45WD2UEM4A5NA.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0090 per 10,000 HTTP Requests",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000009000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "J8ZEVBEAPSXMB5BA" : {
              "J8ZEVBEAPSXMB5BA.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "J8ZEVBEAPSXMB5BA",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "J8ZEVBEAPSXMB5BA.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "J8ZEVBEAPSXMB5BA.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in Asia Pacific (Hong Kong)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "3R2FUPWJ2VYY9GAN" : {
              "3R2FUPWJ2VYY9GAN.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "3R2FUPWJ2VYY9GAN",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "3R2FUPWJ2VYY9GAN.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "3R2FUPWJ2VYY9GAN.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.060 per GB - All data transfer out to Origin (Japan)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0600000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "2PABFNWY9BSSH478" : {
              "2PABFNWY9BSSH478.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "2PABFNWY9BSSH478",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "2PABFNWY9BSSH478.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "2PABFNWY9BSSH478.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in Asia Pacific (Seoul)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "FZ8U6AWT2BMH7T8F" : {
              "FZ8U6AWT2BMH7T8F.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "FZ8U6AWT2BMH7T8F",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "FZ8U6AWT2BMH7T8F.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "FZ8U6AWT2BMH7T8F.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.125 per GB - All data transfer out to Origin (South America)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1250000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "PM8VDVBNS4JXN75X" : {
              "PM8VDVBNS4JXN75X.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "PM8VDVBNS4JXN75X",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "PM8VDVBNS4JXN75X.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "PM8VDVBNS4JXN75X.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in Asia Pacific (Mumbai)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "272YGRMFJS3Z4CKG" : {
              "272YGRMFJS3Z4CKG.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "272YGRMFJS3Z4CKG",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "272YGRMFJS3Z4CKG.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "272YGRMFJS3Z4CKG.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.060 per GB - All data transfer out to Origin (South Africa)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0600000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "6BUV4Q6NJACEB5XG" : {
              "6BUV4Q6NJACEB5XG.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "6BUV4Q6NJACEB5XG",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "6BUV4Q6NJACEB5XG.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "6BUV4Q6NJACEB5XG.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in EU (Frankfurt)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "8JNNPNBQD9DSHV5K" : {
              "8JNNPNBQD9DSHV5K.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "8JNNPNBQD9DSHV5K",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "8JNNPNBQD9DSHV5K.JRTCKXETXF.N9EW5UVVPA" : {
                    "rateCode" : "8JNNPNBQD9DSHV5K.JRTCKXETXF.N9EW5UVVPA",
                    "description" : "$0.094 per GB - next 100 TB / month data transfer out",
                    "beginRange" : "51200",
                    "endRange" : "153600",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0940000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "8JNNPNBQD9DSHV5K.JRTCKXETXF.Q3Z75P77EN" : {
                    "rateCode" : "8JNNPNBQD9DSHV5K.JRTCKXETXF.Q3Z75P77EN",
                    "description" : "$0.114 per GB - first 10 TB / month data transfer out",
                    "beginRange" : "0",
                    "endRange" : "10240",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1140000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "8JNNPNBQD9DSHV5K.JRTCKXETXF.VF6T3GAUKQ" : {
                    "rateCode" : "8JNNPNBQD9DSHV5K.JRTCKXETXF.VF6T3GAUKQ",
                    "description" : "$0.098 per GB - next 40 TB / month data transfer out",
                    "beginRange" : "10240",
                    "endRange" : "51200",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0980000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "8JNNPNBQD9DSHV5K.JRTCKXETXF.3B9CK5AZ6J" : {
                    "rateCode" : "8JNNPNBQD9DSHV5K.JRTCKXETXF.3B9CK5AZ6J",
                    "description" : "$0.09 per GB - next 524 TB / month data transfer out",
                    "beginRange" : "512000",
                    "endRange" : "1048576",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0900000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "8JNNPNBQD9DSHV5K.JRTCKXETXF.SW9U2ZKBYX" : {
                    "rateCode" : "8JNNPNBQD9DSHV5K.JRTCKXETXF.SW9U2ZKBYX",
                    "description" : "$0.08 per GB - data transfer out / month over 5 PB",
                    "beginRange" : "5242880",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0800000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "8JNNPNBQD9DSHV5K.JRTCKXETXF.AZ7GJS7NVF" : {
                    "rateCode" : "8JNNPNBQD9DSHV5K.JRTCKXETXF.AZ7GJS7NVF",
                    "description" : "$0.092 per GB - next 350 TB / month data transfer out",
                    "beginRange" : "153600",
                    "endRange" : "512000",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0920000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "8JNNPNBQD9DSHV5K.JRTCKXETXF.RBMR72YW69" : {
                    "rateCode" : "8JNNPNBQD9DSHV5K.JRTCKXETXF.RBMR72YW69",
                    "description" : "$0.085 per GB - next 4 PB / month data transfer out",
                    "beginRange" : "1048576",
                    "endRange" : "5242880",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0850000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "74J7CHZC7AJ7ZSQQ" : {
              "74J7CHZC7AJ7ZSQQ.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "74J7CHZC7AJ7ZSQQ",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "74J7CHZC7AJ7ZSQQ.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "74J7CHZC7AJ7ZSQQ.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in China (Beijing)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "8N3CV9APGUFMVJ2B" : {
              "8N3CV9APGUFMVJ2B.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "8N3CV9APGUFMVJ2B",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "8N3CV9APGUFMVJ2B.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "8N3CV9APGUFMVJ2B.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in AWS GovCloud (US)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "NTMFPCBFRPVVZD7S" : {
              "NTMFPCBFRPVVZD7S.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "NTMFPCBFRPVVZD7S",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "NTMFPCBFRPVVZD7S.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "NTMFPCBFRPVVZD7S.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0160 per 10,000 Proxy HTTP Requests (South America)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000016000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "84Z32PF576RHPTMX" : {
              "84Z32PF576RHPTMX.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "84Z32PF576RHPTMX",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "84Z32PF576RHPTMX.JRTCKXETXF.SW9U2ZKBYX" : {
                    "rateCode" : "84Z32PF576RHPTMX.JRTCKXETXF.SW9U2ZKBYX",
                    "description" : "$0.040 per GB - data transfer out / month over 5 PB",
                    "beginRange" : "5242880",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0400000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "84Z32PF576RHPTMX.JRTCKXETXF.N9EW5UVVPA" : {
                    "rateCode" : "84Z32PF576RHPTMX.JRTCKXETXF.N9EW5UVVPA",
                    "description" : "$0.090 per GB - next 100 TB / month data transfer out",
                    "beginRange" : "51200",
                    "endRange" : "153600",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0900000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "84Z32PF576RHPTMX.JRTCKXETXF.3B9CK5AZ6J" : {
                    "rateCode" : "84Z32PF576RHPTMX.JRTCKXETXF.3B9CK5AZ6J",
                    "description" : "$0.060 per GB - next 524 TB / month data transfer out",
                    "beginRange" : "512000",
                    "endRange" : "1048576",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0600000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "84Z32PF576RHPTMX.JRTCKXETXF.AZ7GJS7NVF" : {
                    "rateCode" : "84Z32PF576RHPTMX.JRTCKXETXF.AZ7GJS7NVF",
                    "description" : "$0.080 per GB - next 350 TB / month data transfer out",
                    "beginRange" : "153600",
                    "endRange" : "512000",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0800000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "84Z32PF576RHPTMX.JRTCKXETXF.Q3Z75P77EN" : {
                    "rateCode" : "84Z32PF576RHPTMX.JRTCKXETXF.Q3Z75P77EN",
                    "description" : "$0.110 per GB - first 10 TB / month data transfer out",
                    "beginRange" : "0",
                    "endRange" : "10240",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1100000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "84Z32PF576RHPTMX.JRTCKXETXF.RBMR72YW69" : {
                    "rateCode" : "84Z32PF576RHPTMX.JRTCKXETXF.RBMR72YW69",
                    "description" : "$0.050 per GB - next 4 PB / month data transfer out",
                    "beginRange" : "1048576",
                    "endRange" : "5242880",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0500000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "84Z32PF576RHPTMX.JRTCKXETXF.VF6T3GAUKQ" : {
                    "rateCode" : "84Z32PF576RHPTMX.JRTCKXETXF.VF6T3GAUKQ",
                    "description" : "$0.105 per GB - next 40 TB / month data transfer out",
                    "beginRange" : "10240",
                    "endRange" : "51200",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1050000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "C3HHMR3U9CR9AK63" : {
              "C3HHMR3U9CR9AK63.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "C3HHMR3U9CR9AK63",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "C3HHMR3U9CR9AK63.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "C3HHMR3U9CR9AK63.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.020 per GB - All data transfer out to Origin (Europe)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0200000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "78WBDMMUMU9U8T6A" : {
              "78WBDMMUMU9U8T6A.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "78WBDMMUMU9U8T6A",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "78WBDMMUMU9U8T6A.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "78WBDMMUMU9U8T6A.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.08 per GB - All data transfer out to Origin (Australia)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0800000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "9Y9B6NV8MWSGD6RA" : {
              "9Y9B6NV8MWSGD6RA.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "9Y9B6NV8MWSGD6RA",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "9Y9B6NV8MWSGD6RA.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "9Y9B6NV8MWSGD6RA.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in EU (Ireland)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "MVRQ6SWP7QQGC255" : {
              "MVRQ6SWP7QQGC255.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "MVRQ6SWP7QQGC255",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "MVRQ6SWP7QQGC255.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "MVRQ6SWP7QQGC255.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in Canada (Central)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "MEYM8PH2BWE8AEWC" : {
              "MEYM8PH2BWE8AEWC.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "MEYM8PH2BWE8AEWC",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "MEYM8PH2BWE8AEWC.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "MEYM8PH2BWE8AEWC.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in US ISO East",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "ZT3N6V49SHDM9P3G" : {
              "ZT3N6V49SHDM9P3G.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "ZT3N6V49SHDM9P3G",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "ZT3N6V49SHDM9P3G.JRTCKXETXF.AZ7GJS7NVF" : {
                    "rateCode" : "ZT3N6V49SHDM9P3G.JRTCKXETXF.AZ7GJS7NVF",
                    "description" : "$0.080 per GB - next 350 TB / month data transfer out",
                    "beginRange" : "153600",
                    "endRange" : "512000",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0800000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "ZT3N6V49SHDM9P3G.JRTCKXETXF.RBMR72YW69" : {
                    "rateCode" : "ZT3N6V49SHDM9P3G.JRTCKXETXF.RBMR72YW69",
                    "description" : "$0.050 per GB - next 4 PB / month data transfer out",
                    "beginRange" : "1048576",
                    "endRange" : "5242880",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0500000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "ZT3N6V49SHDM9P3G.JRTCKXETXF.SW9U2ZKBYX" : {
                    "rateCode" : "ZT3N6V49SHDM9P3G.JRTCKXETXF.SW9U2ZKBYX",
                    "description" : "$0.040 per GB - data transfer out / month over 5 PB",
                    "beginRange" : "5242880",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0400000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "ZT3N6V49SHDM9P3G.JRTCKXETXF.VF6T3GAUKQ" : {
                    "rateCode" : "ZT3N6V49SHDM9P3G.JRTCKXETXF.VF6T3GAUKQ",
                    "description" : "$0.105 per GB - next 40 TB / month data transfer out",
                    "beginRange" : "10240",
                    "endRange" : "51200",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1050000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "ZT3N6V49SHDM9P3G.JRTCKXETXF.3B9CK5AZ6J" : {
                    "rateCode" : "ZT3N6V49SHDM9P3G.JRTCKXETXF.3B9CK5AZ6J",
                    "description" : "$0.060 per GB - next 524 TB / month data transfer out",
                    "beginRange" : "512000",
                    "endRange" : "1048576",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0600000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "ZT3N6V49SHDM9P3G.JRTCKXETXF.N9EW5UVVPA" : {
                    "rateCode" : "ZT3N6V49SHDM9P3G.JRTCKXETXF.N9EW5UVVPA",
                    "description" : "$0.090 per GB - next 100 TB / month data transfer out",
                    "beginRange" : "51200",
                    "endRange" : "153600",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0900000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "ZT3N6V49SHDM9P3G.JRTCKXETXF.Q3Z75P77EN" : {
                    "rateCode" : "ZT3N6V49SHDM9P3G.JRTCKXETXF.Q3Z75P77EN",
                    "description" : "$0.110 per GB - first 10 TB / month data transfer out",
                    "beginRange" : "0",
                    "endRange" : "10240",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1100000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "DBWJ2RCZ59TXJ29D" : {
              "DBWJ2RCZ59TXJ29D.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "DBWJ2RCZ59TXJ29D",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "DBWJ2RCZ59TXJ29D.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "DBWJ2RCZ59TXJ29D.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "AWS Lambda Edge - Total Compute",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "W6KHTEW6VCKTZFTR" : {
              "W6KHTEW6VCKTZFTR.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "W6KHTEW6VCKTZFTR",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "W6KHTEW6VCKTZFTR.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "W6KHTEW6VCKTZFTR.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.012 per 10,000 HTTPS Requests",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000012000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "MUDWTDSXBQTNZ7KT" : {
              "MUDWTDSXBQTNZ7KT.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "MUDWTDSXBQTNZ7KT",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "MUDWTDSXBQTNZ7KT.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "MUDWTDSXBQTNZ7KT.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in South America (Sao Paulo)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "PZRBP77D3SW5RU5P" : {
              "PZRBP77D3SW5RU5P.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "PZRBP77D3SW5RU5P",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "PZRBP77D3SW5RU5P.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "PZRBP77D3SW5RU5P.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0090 per 10,000 HTTP Requests",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000009000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "GTNGTASZWM5Y2YH6" : {
              "GTNGTASZWM5Y2YH6.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "GTNGTASZWM5Y2YH6",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "GTNGTASZWM5Y2YH6.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "GTNGTASZWM5Y2YH6.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0090 per 10,000 Proxy HTTP Requests (Australia)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000009000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "KQCH34CJC2U3CFQY" : {
              "KQCH34CJC2U3CFQY.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "KQCH34CJC2U3CFQY",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "KQCH34CJC2U3CFQY.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "KQCH34CJC2U3CFQY.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0090 per 10,000 Proxy HTTP Requests (Middle East)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000009000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "UH5MRG7QT9XX6YBP" : {
              "UH5MRG7QT9XX6YBP.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "UH5MRG7QT9XX6YBP",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "UH5MRG7QT9XX6YBP.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "UH5MRG7QT9XX6YBP.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for  in US East (N. Virginia)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "VSPNBX8HMCZBUJEP" : {
              "VSPNBX8HMCZBUJEP.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "VSPNBX8HMCZBUJEP",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "VSPNBX8HMCZBUJEP.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "VSPNBX8HMCZBUJEP.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in China (Beijing)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "STAW4JYR23PMGDK7" : {
              "STAW4JYR23PMGDK7.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "STAW4JYR23PMGDK7",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "STAW4JYR23PMGDK7.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "STAW4JYR23PMGDK7.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0120 per 10,000 HTTPS Requests",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000012000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "R5NDBF38K3GVAYYG" : {
              "R5NDBF38K3GVAYYG.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "R5NDBF38K3GVAYYG",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "R5NDBF38K3GVAYYG.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "R5NDBF38K3GVAYYG.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in Asia Pacific (Tokyo)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "W5Z79UDE6RKXCRMP" : {
              "W5Z79UDE6RKXCRMP.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "W5Z79UDE6RKXCRMP",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "W5Z79UDE6RKXCRMP.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "W5Z79UDE6RKXCRMP.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0160 per 10,000 HTTP Requests",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000016000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "NBZ4CN4FF3UJYS5U" : {
              "NBZ4CN4FF3UJYS5U.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "NBZ4CN4FF3UJYS5U",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "NBZ4CN4FF3UJYS5U.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "NBZ4CN4FF3UJYS5U.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0075 per 10,000 Proxy HTTP Requests (Canada)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000007500"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "YAZJTS7BBDWNETCD" : {
              "YAZJTS7BBDWNETCD.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "YAZJTS7BBDWNETCD",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "YAZJTS7BBDWNETCD.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "YAZJTS7BBDWNETCD.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in US West (N. California)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "FUWQBJC8EW2AP9J4" : {
              "FUWQBJC8EW2AP9J4.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "FUWQBJC8EW2AP9J4",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "FUWQBJC8EW2AP9J4.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "FUWQBJC8EW2AP9J4.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0220 per 10,000 HTTPS Requests",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000022000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "VDPZYE3674YDGVPU" : {
              "VDPZYE3674YDGVPU.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "VDPZYE3674YDGVPU",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "VDPZYE3674YDGVPU.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "VDPZYE3674YDGVPU.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0120 per 10,000 Proxy HTTPS Requests (India)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000012000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "VU3485RNDU6HBQF6" : {
              "VU3485RNDU6HBQF6.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "VU3485RNDU6HBQF6",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "VU3485RNDU6HBQF6.JRTCKXETXF.N9EW5UVVPA" : {
                    "rateCode" : "VU3485RNDU6HBQF6.JRTCKXETXF.N9EW5UVVPA",
                    "description" : "$0.060 per GB - next 100 TB / month data transfer out",
                    "beginRange" : "51200",
                    "endRange" : "153600",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0600000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "VU3485RNDU6HBQF6.JRTCKXETXF.VF6T3GAUKQ" : {
                    "rateCode" : "VU3485RNDU6HBQF6.JRTCKXETXF.VF6T3GAUKQ",
                    "description" : "$0.080 per GB - next 40 TB / month data transfer out",
                    "beginRange" : "10240",
                    "endRange" : "51200",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0800000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "VU3485RNDU6HBQF6.JRTCKXETXF.RBMR72YW69" : {
                    "rateCode" : "VU3485RNDU6HBQF6.JRTCKXETXF.RBMR72YW69",
                    "description" : "$0.025 per GB - next 4 PB / month data transfer out",
                    "beginRange" : "1048576",
                    "endRange" : "5242880",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0250000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "VU3485RNDU6HBQF6.JRTCKXETXF.Q3Z75P77EN" : {
                    "rateCode" : "VU3485RNDU6HBQF6.JRTCKXETXF.Q3Z75P77EN",
                    "description" : "$0.085 per GB - first 10 TB / month data transfer out",
                    "beginRange" : "0",
                    "endRange" : "10240",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0850000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "VU3485RNDU6HBQF6.JRTCKXETXF.AZ7GJS7NVF" : {
                    "rateCode" : "VU3485RNDU6HBQF6.JRTCKXETXF.AZ7GJS7NVF",
                    "description" : "$0.040 per GB - next 350 TB / month data transfer out",
                    "beginRange" : "153600",
                    "endRange" : "512000",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0400000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "VU3485RNDU6HBQF6.JRTCKXETXF.3B9CK5AZ6J" : {
                    "rateCode" : "VU3485RNDU6HBQF6.JRTCKXETXF.3B9CK5AZ6J",
                    "description" : "$0.030 per GB - next 524 TB / month data transfer out",
                    "beginRange" : "512000",
                    "endRange" : "1048576",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0300000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "VU3485RNDU6HBQF6.JRTCKXETXF.SW9U2ZKBYX" : {
                    "rateCode" : "VU3485RNDU6HBQF6.JRTCKXETXF.SW9U2ZKBYX",
                    "description" : "$0.020 per GB - data transfer out / month over 5 PB",
                    "beginRange" : "5242880",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0200000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "YA5QZD7XG45UGHCH" : {
              "YA5QZD7XG45UGHCH.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "YA5QZD7XG45UGHCH",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "YA5QZD7XG45UGHCH.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "YA5QZD7XG45UGHCH.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0120 per 10,000 HTTPS Requests",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000012000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "DCX5PSWXNPZDK63Q" : {
              "DCX5PSWXNPZDK63Q.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "DCX5PSWXNPZDK63Q",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "DCX5PSWXNPZDK63Q.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "DCX5PSWXNPZDK63Q.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0100 per 10,000 Proxy HTTPS Requests (US)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000010000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "PNXA2DMMYWR3R73F" : {
              "PNXA2DMMYWR3R73F.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "PNXA2DMMYWR3R73F",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "PNXA2DMMYWR3R73F.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "PNXA2DMMYWR3R73F.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in Asia Pacific (Singapore)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "ZB3BQW3UAPZBVRPZ" : {
              "ZB3BQW3UAPZBVRPZ.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "ZB3BQW3UAPZBVRPZ",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "ZB3BQW3UAPZBVRPZ.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "ZB3BQW3UAPZBVRPZ.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in EU (Ireland)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "NJD45NCV7D7JXRXJ" : {
              "NJD45NCV7D7JXRXJ.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "NJD45NCV7D7JXRXJ",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "NJD45NCV7D7JXRXJ.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "NJD45NCV7D7JXRXJ.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0075 per 10,000 HTTP Requests",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000007500"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "XMD65YTJR2D93PDJ" : {
              "XMD65YTJR2D93PDJ.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "XMD65YTJR2D93PDJ",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "XMD65YTJR2D93PDJ.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "XMD65YTJR2D93PDJ.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in Asia Pacific (Sydney)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "36NP94WQXKD2BEH5" : {
              "36NP94WQXKD2BEH5.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "36NP94WQXKD2BEH5",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "36NP94WQXKD2BEH5.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "36NP94WQXKD2BEH5.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.02 per 10,000 Proxy HTTPS Field Level Encryption Requests (India)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000020000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "4ENKM5T6A6T9QPD2" : {
              "4ENKM5T6A6T9QPD2.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "4ENKM5T6A6T9QPD2",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "4ENKM5T6A6T9QPD2.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "4ENKM5T6A6T9QPD2.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.02 per 10,000 Proxy HTTPS Field Level Encryption Requests (Europe)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000020000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "9MS5ZWGYNFR5NURG" : {
              "9MS5ZWGYNFR5NURG.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "9MS5ZWGYNFR5NURG",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "9MS5ZWGYNFR5NURG.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "9MS5ZWGYNFR5NURG.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0090 per 10,000 HTTP Requests",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000009000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "ZG984ETY8SNCPH2B" : {
              "ZG984ETY8SNCPH2B.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "ZG984ETY8SNCPH2B",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "ZG984ETY8SNCPH2B.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "ZG984ETY8SNCPH2B.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0100 per 10,000 HTTPS Requests (Canada)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000010000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "9HPM7YEKYRSM3BY4" : {
              "9HPM7YEKYRSM3BY4.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "9HPM7YEKYRSM3BY4",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "9HPM7YEKYRSM3BY4.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "9HPM7YEKYRSM3BY4.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in AWS GovCloud (US)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "SUYUX3YD9AB7U6US" : {
              "SUYUX3YD9AB7U6US.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "SUYUX3YD9AB7U6US",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "SUYUX3YD9AB7U6US.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "SUYUX3YD9AB7U6US.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0075 per 10,000 Proxy HTTP Requests (US)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000007500"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "UCNM6SMX7DQFG5N7" : {
              "UCNM6SMX7DQFG5N7.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "UCNM6SMX7DQFG5N7",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "UCNM6SMX7DQFG5N7.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "UCNM6SMX7DQFG5N7.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0120 per 10,000 Proxy HTTPS Requests (South Africa)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000012000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "QW9DRRBUB3Y64FJZ" : {
              "QW9DRRBUB3Y64FJZ.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "QW9DRRBUB3Y64FJZ",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "QW9DRRBUB3Y64FJZ.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "QW9DRRBUB3Y64FJZ.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0090 per 10,000 HTTP Requests (India)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000009000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "UTWW52RE2H4MPK23" : {
              "UTWW52RE2H4MPK23.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "UTWW52RE2H4MPK23",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "UTWW52RE2H4MPK23.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "UTWW52RE2H4MPK23.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in Middle East (Bahrain)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "CG6SPBTASWBFEZ88" : {
              "CG6SPBTASWBFEZ88.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "CG6SPBTASWBFEZ88",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "CG6SPBTASWBFEZ88.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "CG6SPBTASWBFEZ88.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in US West (N. California)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "4ZKPCBHJ6DH3YZKY" : {
              "4ZKPCBHJ6DH3YZKY.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "4ZKPCBHJ6DH3YZKY",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "4ZKPCBHJ6DH3YZKY.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "4ZKPCBHJ6DH3YZKY.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0090 per 10,000 HTTP Requests",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000009000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "62FMXYC43CP8KPXW" : {
              "62FMXYC43CP8KPXW.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "62FMXYC43CP8KPXW",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "62FMXYC43CP8KPXW.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "62FMXYC43CP8KPXW.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0120 per 10,000 Proxy HTTPS Requests (Japan)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000012000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "2RU96X5GXXQ62U7Q" : {
              "2RU96X5GXXQ62U7Q.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "2RU96X5GXXQ62U7Q",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "2RU96X5GXXQ62U7Q.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "2RU96X5GXXQ62U7Q.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.060 per GB - All data transfer out to Origin (Middle East)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0600000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "JYWBAKWR4AVKH8DT" : {
              "JYWBAKWR4AVKH8DT.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "JYWBAKWR4AVKH8DT",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "JYWBAKWR4AVKH8DT.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "JYWBAKWR4AVKH8DT.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0090 per 10,000 HTTP Requests",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000009000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "TA7VH9EF7Y6QX7Q2" : {
              "TA7VH9EF7Y6QX7Q2.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "TA7VH9EF7Y6QX7Q2",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "TA7VH9EF7Y6QX7Q2.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "TA7VH9EF7Y6QX7Q2.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in Asia Pacific (Singapore)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "29K2E4HBJAYXK2EK" : {
              "29K2E4HBJAYXK2EK.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "29K2E4HBJAYXK2EK",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "29K2E4HBJAYXK2EK.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "29K2E4HBJAYXK2EK.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0075 per 10,000 HTTP Requests (Canada)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000007500"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "2NC4ZCXUPXRR3MMW" : {
              "2NC4ZCXUPXRR3MMW.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "2NC4ZCXUPXRR3MMW",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "2NC4ZCXUPXRR3MMW.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "2NC4ZCXUPXRR3MMW.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.02 per 10,000 Proxy HTTPS Field Level Encryption Requests (Asia)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000020000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "HPYSX4844A2F5TD9" : {
              "HPYSX4844A2F5TD9.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "HPYSX4844A2F5TD9",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "HPYSX4844A2F5TD9.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "HPYSX4844A2F5TD9.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in EU (London)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "9BETCR5FAVJ6V76R" : {
              "9BETCR5FAVJ6V76R.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "9BETCR5FAVJ6V76R",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "9BETCR5FAVJ6V76R.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "9BETCR5FAVJ6V76R.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0120 per 10,000 HTTPS Requests",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000012000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "GHWRYTRYJH9FREQB" : {
              "GHWRYTRYJH9FREQB.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "GHWRYTRYJH9FREQB",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "GHWRYTRYJH9FREQB.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "GHWRYTRYJH9FREQB.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in US East (Ohio)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "XVZYVSAH88373VKR" : {
              "XVZYVSAH88373VKR.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "XVZYVSAH88373VKR",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "XVZYVSAH88373VKR.JRTCKXETXF.Q3Z75P77EN" : {
                    "rateCode" : "XVZYVSAH88373VKR.JRTCKXETXF.Q3Z75P77EN",
                    "description" : "$0.170 per GB - first 10 TB / month data transfer out (India)",
                    "beginRange" : "0",
                    "endRange" : "10240",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1700000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "XVZYVSAH88373VKR.JRTCKXETXF.VF6T3GAUKQ" : {
                    "rateCode" : "XVZYVSAH88373VKR.JRTCKXETXF.VF6T3GAUKQ",
                    "description" : "$0.130 per GB - next 40 TB / month data transfer out (India)",
                    "beginRange" : "10240",
                    "endRange" : "51200",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1300000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "XVZYVSAH88373VKR.JRTCKXETXF.N9EW5UVVPA" : {
                    "rateCode" : "XVZYVSAH88373VKR.JRTCKXETXF.N9EW5UVVPA",
                    "description" : "$0.110 per GB - next 100 TB / month data transfer out (India)",
                    "beginRange" : "51200",
                    "endRange" : "153600",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1100000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "XVZYVSAH88373VKR.JRTCKXETXF.GPHXDESFBB" : {
                    "rateCode" : "XVZYVSAH88373VKR.JRTCKXETXF.GPHXDESFBB",
                    "description" : "$0.100 per GB - data transfer out / month over 150 TB (India)",
                    "beginRange" : "153600",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1000000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "AGSZEF5XC2MG4FUH" : {
              "AGSZEF5XC2MG4FUH.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "AGSZEF5XC2MG4FUH",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "AGSZEF5XC2MG4FUH.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "AGSZEF5XC2MG4FUH.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.020 per GB - All data transfer out to Origin (US)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0200000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "KJKQCFWRY9KUWY4S" : {
              "KJKQCFWRY9KUWY4S.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "KJKQCFWRY9KUWY4S",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "KJKQCFWRY9KUWY4S.JRTCKXETXF.3B9CK5AZ6J" : {
                    "rateCode" : "KJKQCFWRY9KUWY4S.JRTCKXETXF.3B9CK5AZ6J",
                    "description" : "$0.060 per GB - next 524 TB / month data transfer out",
                    "beginRange" : "512000",
                    "endRange" : "1048576",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0600000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "KJKQCFWRY9KUWY4S.JRTCKXETXF.VF6T3GAUKQ" : {
                    "rateCode" : "KJKQCFWRY9KUWY4S.JRTCKXETXF.VF6T3GAUKQ",
                    "description" : "$0.105 per GB - next 40 TB / month data transfer out",
                    "beginRange" : "10240",
                    "endRange" : "51200",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1050000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "KJKQCFWRY9KUWY4S.JRTCKXETXF.SW9U2ZKBYX" : {
                    "rateCode" : "KJKQCFWRY9KUWY4S.JRTCKXETXF.SW9U2ZKBYX",
                    "description" : "$0.040 per GB - data transfer out / month over 5 PB",
                    "beginRange" : "5242880",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0400000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "KJKQCFWRY9KUWY4S.JRTCKXETXF.RBMR72YW69" : {
                    "rateCode" : "KJKQCFWRY9KUWY4S.JRTCKXETXF.RBMR72YW69",
                    "description" : "$0.050 per GB - next 4 PB / month data transfer out",
                    "beginRange" : "1048576",
                    "endRange" : "5242880",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0500000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "KJKQCFWRY9KUWY4S.JRTCKXETXF.AZ7GJS7NVF" : {
                    "rateCode" : "KJKQCFWRY9KUWY4S.JRTCKXETXF.AZ7GJS7NVF",
                    "description" : "$0.080 per GB - next 350 TB / month data transfer out",
                    "beginRange" : "153600",
                    "endRange" : "512000",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0800000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "KJKQCFWRY9KUWY4S.JRTCKXETXF.N9EW5UVVPA" : {
                    "rateCode" : "KJKQCFWRY9KUWY4S.JRTCKXETXF.N9EW5UVVPA",
                    "description" : "$0.090 per GB - next 100 TB / month data transfer out",
                    "beginRange" : "51200",
                    "endRange" : "153600",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0900000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "KJKQCFWRY9KUWY4S.JRTCKXETXF.Q3Z75P77EN" : {
                    "rateCode" : "KJKQCFWRY9KUWY4S.JRTCKXETXF.Q3Z75P77EN",
                    "description" : "$0.110 per GB - first 10 TB / month data transfer out",
                    "beginRange" : "0",
                    "endRange" : "10240",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1100000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "R7XJDKRNTBXEMJRP" : {
              "R7XJDKRNTBXEMJRP.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "R7XJDKRNTBXEMJRP",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "R7XJDKRNTBXEMJRP.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "R7XJDKRNTBXEMJRP.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0090 per 10,000 Proxy HTTP Requests (South Africa)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000009000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "EWY8FRNGUCT82ZWQ" : {
              "EWY8FRNGUCT82ZWQ.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "EWY8FRNGUCT82ZWQ",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "EWY8FRNGUCT82ZWQ.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "EWY8FRNGUCT82ZWQ.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in China (Ningxia)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "YR9KNSXHQ8YZU3RU" : {
              "YR9KNSXHQ8YZU3RU.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "YR9KNSXHQ8YZU3RU",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "YR9KNSXHQ8YZU3RU.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "YR9KNSXHQ8YZU3RU.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.16 per GB - All data transfer out to Origin (India)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1600000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "FK9TNZUQ2YPXXDWP" : {
              "FK9TNZUQ2YPXXDWP.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "FK9TNZUQ2YPXXDWP",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "FK9TNZUQ2YPXXDWP.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "FK9TNZUQ2YPXXDWP.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.02 per 10,000 Proxy HTTPS Field Level Encryption Requests (South America)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000020000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "QY3BQE47QTETZ49M" : {
              "QY3BQE47QTETZ49M.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "QY3BQE47QTETZ49M",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "QY3BQE47QTETZ49M.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "QY3BQE47QTETZ49M.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.02 per 10,000 Proxy HTTPS Field Level Encryption Requests (Canada)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000020000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "2HPGFMFR4R8MYDJV" : {
              "2HPGFMFR4R8MYDJV.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "2HPGFMFR4R8MYDJV",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "2HPGFMFR4R8MYDJV.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "2HPGFMFR4R8MYDJV.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0090 per 10,000 Proxy HTTP Requests (Asia)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000009000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "GJTTXSYXV43ANXTQ" : {
              "GJTTXSYXV43ANXTQ.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "GJTTXSYXV43ANXTQ",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "GJTTXSYXV43ANXTQ.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "GJTTXSYXV43ANXTQ.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0120 per 10,000 HTTPS Requests (India)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000012000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "XCRNU3Y2GKCYSQKZ" : {
              "XCRNU3Y2GKCYSQKZ.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "XCRNU3Y2GKCYSQKZ",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "XCRNU3Y2GKCYSQKZ.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "XCRNU3Y2GKCYSQKZ.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0100 per 10,000 Proxy HTTPS Requests (Canada)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000010000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "QACAAGRH4G2FVQW7" : {
              "QACAAGRH4G2FVQW7.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "QACAAGRH4G2FVQW7",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "QACAAGRH4G2FVQW7.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "QACAAGRH4G2FVQW7.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in Asia Pacific (Mumbai)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "B7PPPKA28K3F827S" : {
              "B7PPPKA28K3F827S.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "B7PPPKA28K3F827S",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "B7PPPKA28K3F827S.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "B7PPPKA28K3F827S.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.02 per 10,000 Proxy HTTPS Field Level Encryption Requests (Middle East)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000020000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "NKFHQCWX54SD3MPK" : {
              "NKFHQCWX54SD3MPK.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "NKFHQCWX54SD3MPK",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "NKFHQCWX54SD3MPK.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "NKFHQCWX54SD3MPK.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in Asia Pacific (Sydney)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "XB79AHC8SZ754YG3" : {
              "XB79AHC8SZ754YG3.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "XB79AHC8SZ754YG3",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "XB79AHC8SZ754YG3.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "XB79AHC8SZ754YG3.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.02 per 10,000 Proxy HTTPS Field Level Encryption Requests (US)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000020000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "QUEZ7XDZJJXURBU7" : {
              "QUEZ7XDZJJXURBU7.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "QUEZ7XDZJJXURBU7",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "QUEZ7XDZJJXURBU7.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "QUEZ7XDZJJXURBU7.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$600.00 per month per custom SSL certificate",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Mo",
                    "pricePerUnit" : {
                      "USD" : "600.0000000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "NZ4NVSNUH8BS2X2Z" : {
              "NZ4NVSNUH8BS2X2Z.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "NZ4NVSNUH8BS2X2Z",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "NZ4NVSNUH8BS2X2Z.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "NZ4NVSNUH8BS2X2Z.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0090 per 10,000 Proxy HTTP Requests (Japan)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000009000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "MA5MA7NZ72QR35RX" : {
              "MA5MA7NZ72QR35RX.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "MA5MA7NZ72QR35RX",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "MA5MA7NZ72QR35RX.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "MA5MA7NZ72QR35RX.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0090 per 10,000 Proxy HTTP Requests (India)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000009000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "NU6RX88N2CYBCXUJ" : {
              "NU6RX88N2CYBCXUJ.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "NU6RX88N2CYBCXUJ",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "NU6RX88N2CYBCXUJ.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "NU6RX88N2CYBCXUJ.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in EU (Paris)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "CME9BRJSS2F5PBYE" : {
              "CME9BRJSS2F5PBYE.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "CME9BRJSS2F5PBYE",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "CME9BRJSS2F5PBYE.JRTCKXETXF.N9EW5UVVPA" : {
                    "rateCode" : "CME9BRJSS2F5PBYE.JRTCKXETXF.N9EW5UVVPA",
                    "description" : "$0.086 per GB - next 100 TB / month data transfer out",
                    "beginRange" : "51200",
                    "endRange" : "153600",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0860000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "CME9BRJSS2F5PBYE.JRTCKXETXF.AZ7GJS7NVF" : {
                    "rateCode" : "CME9BRJSS2F5PBYE.JRTCKXETXF.AZ7GJS7NVF",
                    "description" : "$0.084 per GB - next 350 TB / month data transfer out",
                    "beginRange" : "153600",
                    "endRange" : "512000",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0840000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "CME9BRJSS2F5PBYE.JRTCKXETXF.RBMR72YW69" : {
                    "rateCode" : "CME9BRJSS2F5PBYE.JRTCKXETXF.RBMR72YW69",
                    "description" : "$0.070 per GB - next 4 PB / month data transfer out",
                    "beginRange" : "1048576",
                    "endRange" : "5242880",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0700000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "CME9BRJSS2F5PBYE.JRTCKXETXF.VF6T3GAUKQ" : {
                    "rateCode" : "CME9BRJSS2F5PBYE.JRTCKXETXF.VF6T3GAUKQ",
                    "description" : "$0.089 per GB - next 40 TB / month data transfer out",
                    "beginRange" : "10240",
                    "endRange" : "51200",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0890000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "CME9BRJSS2F5PBYE.JRTCKXETXF.Q3Z75P77EN" : {
                    "rateCode" : "CME9BRJSS2F5PBYE.JRTCKXETXF.Q3Z75P77EN",
                    "description" : "$0.114 per GB - first 10 TB / month data transfer out",
                    "beginRange" : "0",
                    "endRange" : "10240",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1140000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "CME9BRJSS2F5PBYE.JRTCKXETXF.SW9U2ZKBYX" : {
                    "rateCode" : "CME9BRJSS2F5PBYE.JRTCKXETXF.SW9U2ZKBYX",
                    "description" : "$0.060 per GB - data transfer out / month over 5 PB",
                    "beginRange" : "5242880",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0600000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "CME9BRJSS2F5PBYE.JRTCKXETXF.3B9CK5AZ6J" : {
                    "rateCode" : "CME9BRJSS2F5PBYE.JRTCKXETXF.3B9CK5AZ6J",
                    "description" : "$0.080 per GB - next 524 TB / month data transfer out",
                    "beginRange" : "512000",
                    "endRange" : "1048576",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0800000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "PD5DWTZFHSSQH4CD" : {
              "PD5DWTZFHSSQH4CD.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "PD5DWTZFHSSQH4CD",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "PD5DWTZFHSSQH4CD.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "PD5DWTZFHSSQH4CD.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.02 per 10,000 Proxy HTTPS Field Level Encryption Requests (Australia)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000020000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "P9JPS8B69E4GFGZZ" : {
              "P9JPS8B69E4GFGZZ.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "P9JPS8B69E4GFGZZ",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "P9JPS8B69E4GFGZZ.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "P9JPS8B69E4GFGZZ.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in China (Ningxia)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "GBZF22PZM223EGZZ" : {
              "GBZF22PZM223EGZZ.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "GBZF22PZM223EGZZ",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "GBZF22PZM223EGZZ.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "GBZF22PZM223EGZZ.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in EU (Stockholm)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "A86N9S7CGUKZHH8P" : {
              "A86N9S7CGUKZHH8P.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "A86N9S7CGUKZHH8P",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "A86N9S7CGUKZHH8P.JRTCKXETXF.SW9U2ZKBYX" : {
                    "rateCode" : "A86N9S7CGUKZHH8P.JRTCKXETXF.SW9U2ZKBYX",
                    "description" : "$0.060 per GB - data transfer out / month over 5 PB",
                    "beginRange" : "5242880",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0600000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "A86N9S7CGUKZHH8P.JRTCKXETXF.VF6T3GAUKQ" : {
                    "rateCode" : "A86N9S7CGUKZHH8P.JRTCKXETXF.VF6T3GAUKQ",
                    "description" : "$0.135 per GB - next 40 TB / month data transfer out",
                    "beginRange" : "10240",
                    "endRange" : "51200",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1350000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "A86N9S7CGUKZHH8P.JRTCKXETXF.RBMR72YW69" : {
                    "rateCode" : "A86N9S7CGUKZHH8P.JRTCKXETXF.RBMR72YW69",
                    "description" : "$0.070 per GB - next 4 PB / month data transfer out",
                    "beginRange" : "1048576",
                    "endRange" : "5242880",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0700000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "A86N9S7CGUKZHH8P.JRTCKXETXF.AZ7GJS7NVF" : {
                    "rateCode" : "A86N9S7CGUKZHH8P.JRTCKXETXF.AZ7GJS7NVF",
                    "description" : "$0.100 per GB - next 350 TB / month data transfer out",
                    "beginRange" : "153600",
                    "endRange" : "512000",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1000000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "A86N9S7CGUKZHH8P.JRTCKXETXF.Q3Z75P77EN" : {
                    "rateCode" : "A86N9S7CGUKZHH8P.JRTCKXETXF.Q3Z75P77EN",
                    "description" : "$0.140 per GB - first 10 TB / month data transfer out",
                    "beginRange" : "0",
                    "endRange" : "10240",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1400000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "A86N9S7CGUKZHH8P.JRTCKXETXF.3B9CK5AZ6J" : {
                    "rateCode" : "A86N9S7CGUKZHH8P.JRTCKXETXF.3B9CK5AZ6J",
                    "description" : "$0.080 per GB - next 524 TB / month data transfer out",
                    "beginRange" : "512000",
                    "endRange" : "1048576",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0800000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "A86N9S7CGUKZHH8P.JRTCKXETXF.N9EW5UVVPA" : {
                    "rateCode" : "A86N9S7CGUKZHH8P.JRTCKXETXF.N9EW5UVVPA",
                    "description" : "$0.120 per GB - next 100 TB / month data transfer out",
                    "beginRange" : "51200",
                    "endRange" : "153600",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.1200000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "EJZT492VM8J2VQTQ" : {
              "EJZT492VM8J2VQTQ.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "EJZT492VM8J2VQTQ",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "EJZT492VM8J2VQTQ.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "EJZT492VM8J2VQTQ.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.012 per 10,000 HTTPS Requests",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000012000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "4V34MN2EVACKUWTK" : {
              "4V34MN2EVACKUWTK.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "4V34MN2EVACKUWTK",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "4V34MN2EVACKUWTK.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "4V34MN2EVACKUWTK.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0125 per 10,000 Proxy HTTPS Requests (Australia)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000012500"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "2EA5PDPGTS67B5H7" : {
              "2EA5PDPGTS67B5H7.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "2EA5PDPGTS67B5H7",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "2EA5PDPGTS67B5H7.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "2EA5PDPGTS67B5H7.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in US East (Ohio)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "R8AAUQRQANXB3JJD" : {
              "R8AAUQRQANXB3JJD.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "R8AAUQRQANXB3JJD",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "R8AAUQRQANXB3JJD.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "R8AAUQRQANXB3JJD.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in Middle East (Bahrain)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "YNZW9TGPQWEQM4JS" : {
              "YNZW9TGPQWEQM4JS.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "YNZW9TGPQWEQM4JS",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "YNZW9TGPQWEQM4JS.JRTCKXETXF.Q3Z75P77EN" : {
                    "rateCode" : "YNZW9TGPQWEQM4JS.JRTCKXETXF.Q3Z75P77EN",
                    "description" : "$0.085 per GB - first 10 TB / month data transfer out (Canada)",
                    "beginRange" : "0",
                    "endRange" : "10240",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0850000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "YNZW9TGPQWEQM4JS.JRTCKXETXF.VF6T3GAUKQ" : {
                    "rateCode" : "YNZW9TGPQWEQM4JS.JRTCKXETXF.VF6T3GAUKQ",
                    "description" : "$0.080 per GB - next 40 TB / month data transfer out (Canada)",
                    "beginRange" : "10240",
                    "endRange" : "51200",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0800000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "YNZW9TGPQWEQM4JS.JRTCKXETXF.N9EW5UVVPA" : {
                    "rateCode" : "YNZW9TGPQWEQM4JS.JRTCKXETXF.N9EW5UVVPA",
                    "description" : "$0.060 per GB - next 100 TB / month data transfer out (Canada)",
                    "beginRange" : "51200",
                    "endRange" : "153600",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0600000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "YNZW9TGPQWEQM4JS.JRTCKXETXF.RBMR72YW69" : {
                    "rateCode" : "YNZW9TGPQWEQM4JS.JRTCKXETXF.RBMR72YW69",
                    "description" : "$0.025 per GB - next 4 PB / month data transfer out (Canada)",
                    "beginRange" : "1048576",
                    "endRange" : "5242880",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0250000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "YNZW9TGPQWEQM4JS.JRTCKXETXF.AZ7GJS7NVF" : {
                    "rateCode" : "YNZW9TGPQWEQM4JS.JRTCKXETXF.AZ7GJS7NVF",
                    "description" : "$0.040 per GB - next 350 TB / month data transfer out (Canada)",
                    "beginRange" : "153600",
                    "endRange" : "512000",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0400000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "YNZW9TGPQWEQM4JS.JRTCKXETXF.SW9U2ZKBYX" : {
                    "rateCode" : "YNZW9TGPQWEQM4JS.JRTCKXETXF.SW9U2ZKBYX",
                    "description" : "$0.020 per GB - data transfer out / month over 5 PB (Canada)",
                    "beginRange" : "5242880",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0200000000"
                    },
                    "appliesTo" : [ ]
                  },
                  "YNZW9TGPQWEQM4JS.JRTCKXETXF.3B9CK5AZ6J" : {
                    "rateCode" : "YNZW9TGPQWEQM4JS.JRTCKXETXF.3B9CK5AZ6J",
                    "description" : "$0.030 per GB - next 524 TB / month data transfer out (Canada)",
                    "beginRange" : "512000",
                    "endRange" : "1048576",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0300000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "PN592W3XFEHYAJER" : {
              "PN592W3XFEHYAJER.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "PN592W3XFEHYAJER",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "PN592W3XFEHYAJER.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "PN592W3XFEHYAJER.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for  in US East (N. Virginia)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "RKTZW6A9KBYCNJ5S" : {
              "RKTZW6A9KBYCNJ5S.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "RKTZW6A9KBYCNJ5S",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "RKTZW6A9KBYCNJ5S.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "RKTZW6A9KBYCNJ5S.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.02 per 10,000 Proxy HTTPS Field Level Encryption Requests (Japan)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000020000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "B6F5HP6FXAFTNWPC" : {
              "B6F5HP6FXAFTNWPC.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "B6F5HP6FXAFTNWPC",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "B6F5HP6FXAFTNWPC.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "B6F5HP6FXAFTNWPC.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.020 per GB - All data transfer out to Origin (Canada)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "GB",
                    "pricePerUnit" : {
                      "USD" : "0.0200000000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "A9Q42669TT5XQMRW" : {
              "A9Q42669TT5XQMRW.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "A9Q42669TT5XQMRW",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "A9Q42669TT5XQMRW.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "A9Q42669TT5XQMRW.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in Canada (Central)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "8AH7WHHPAA452VWV" : {
              "8AH7WHHPAA452VWV.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "8AH7WHHPAA452VWV",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "8AH7WHHPAA452VWV.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "8AH7WHHPAA452VWV.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.00005001 per Lambda-GB-Second for Lambda-Edge-GB-Second in Asia Pacific (Tokyo)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Lambda-GB-Second",
                    "pricePerUnit" : {
                      "USD" : "0.0000500100"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "XXEA4SCG9TSQCDF2" : {
              "XXEA4SCG9TSQCDF2.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "XXEA4SCG9TSQCDF2",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "XXEA4SCG9TSQCDF2.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "XXEA4SCG9TSQCDF2.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0125 per 10,000 HTTPS Requests",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000012500"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "XD7ZDAECJ2BPHRKJ" : {
              "XD7ZDAECJ2BPHRKJ.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "XD7ZDAECJ2BPHRKJ",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "XD7ZDAECJ2BPHRKJ.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "XD7ZDAECJ2BPHRKJ.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$0.0090 per 10,000 Proxy HTTP Requests (Europe)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Requests",
                    "pricePerUnit" : {
                      "USD" : "0.0000009000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            },
            "CYHNW9MJYBF8UUJY" : {
              "CYHNW9MJYBF8UUJY.JRTCKXETXF" : {
                "offerTermCode" : "JRTCKXETXF",
                "sku" : "CYHNW9MJYBF8UUJY",
                "effectiveDate" : "2019-12-01T00:00:00Z",
                "priceDimensions" : {
                  "CYHNW9MJYBF8UUJY.JRTCKXETXF.6YS6EN2CT7" : {
                    "rateCode" : "CYHNW9MJYBF8UUJY.JRTCKXETXF.6YS6EN2CT7",
                    "description" : "$6.0E-7  per Request for Lambda-Edge-Request in AWS GovCloud (US-East)",
                    "beginRange" : "0",
                    "endRange" : "Inf",
                    "unit" : "Request",
                    "pricePerUnit" : {
                      "USD" : "0.0000006000"
                    },
                    "appliesTo" : [ ]
                  }
                },
                "termAttributes" : { }
              }
            }
          }
        }
      }'
      # aws_response = JSON.parse(res.body)
      aws_response = JSON.parse(a)
      AwsPriceLog.update_rates(aws_response)
    # else
    # end
  end
end