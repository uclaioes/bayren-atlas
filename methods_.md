---
layout: page_
title: Methods
---

The **Bay Area Energy Atlas** is an interactive platform that combines PG\&E metered electricity and gas consumption data with contextual information about associated building attributes and socio-demographic characteristics. It has been developed to inform energy planning efforts on a local level. All data accessible through this website has been aggregated in accordance with CPUC guidelines in order to protect customer privacy.

To develop this public facing website, researchers have collected, processed, and analyzed energy and related data from a variety of sources. The site features interactive energy maps, comparative graphs, and tabular views of community energy profile data, both in isolation and normalized in multiple different ways. The aggregated information presented on this website has been compiled from a separate, confidential, spatially-aware relational database. The private monthly account level energy consumption records in this database are geographically linked to building characteristics and census attributes.

The **Bay Area Energy Atlas** is part of the broader **Energy Atlas** research project at the **California Center for Sustainable Communities**, which seeks to provide Californians and those interested in ongoing energy transitions with the opportunity to explore one of the largest sets of disaggregated building energy data available in the nation. Our interactive tools are used by a wide variety of stakeholder groups to inform energy planning and research throughout California. As the creators of these tools, our mission is to provide transparency and access to critical energy data to achieve the state’s ambitious energy and climate goals.

The University of California is a public institution and CCSC researchers are committed to providing data and analysis in a transparent manner to advance energy planning and inform public policy. Below is an overview of the methods used to create this tool as well as limitations. For additional details or questions please contact CCSC directly.

***A Note About Updates***

Energy Atlas is a constantly evolving tool. The task of combining the large and complex datasets that underpin the Energy Atlas is challenging, and data on the Atlas website may change over time as we are able to improve the methods used to standardize, process, and aggregate the source energy data and contextual data. We strive to produce the most accurate results possible, however there are certain intrinsic sources of error as outlined in the Limitations section below. We are constantly working to improve this tool and the valuable data outputs used for important policy and planning applications.

If you have a question about specific geographic energy consumption statistics, please reach out to CCSC.

## Data Overview

The Energy Atlas is a product of two separate and distinct databases:

1. **Back-end database (Confidential)**: This database is a confidential geospatial relational database that contains almost 3.5 million address-level energy records at the monthly billing level. This database also contains county parcel data, census data, administrative boundaries, and other relevant data used to analyze and map energy consumption across nine Bay Area counties. Due to privacy constraints associated with the use of PII utility customer data, this database is only accessible to qualifying CCSC researchers under rigorous cyber-security protocols and is subject to binding non-disclosure agreements.

2. **Front-end database (Public)**: The Bay Area Energy Atlas website is powered by separate aggregated and privacy protected data tables that are exported as a set of query outputs from the back-end database. After the data contained within these aggregated tables have been verified as passing privacy controls, they are made accessible to the public to download on this site, and are hosted on a separate cloud server.

Alt text: The diagram illustrates the input data that is preprocessed, standardized, geocoded, and stored in a confidential PostgreSQL database with PostGIS. The relational database organizes account-level energy consumption and spatial relationships. Data is aggregated, analyzed, and subsequently transferred to the public database that stores all aggregated data powering the website/API.)

### PG&E Utility Data

The energy consumption data in the Bay Area Energy Atlas comes from monthly meter-level PG\&E customer billing data from 2013-2017. These billing records include both electricity and natural gas consumption for residential and nonresidential accounts in the nine-county BayREN territory. UCLA received this data in late 2019 via a Non-Disclosure Agreement with the California Public Utilities Commission (CPUC). All energy consumption data available on this website is aggregated to meet the CPUC customer privacy aggregation threshold guidelines (D.14-05-016). For more information about the privacy aggregation threshold, please see Masked vs. Unavailable Data below.

Some customers living within the Bay Area are provided energy service by utilities other than PG\&E. Usage for these customers is not included at this time. Non-PG\&E usage data from Healdsburg, Palo Alto, Alameda, Hercules before 2014, Pittsburg Power Company Island Energy, Silicon Valley Power, Hetch Hetchy Power, Port of Oakland are not included in these totals.

**Omitted Data**: Natural gas accounts used to generate electricity were identified by rate tariff and removed from reported totals to avoid double counting the same energy in the form of electricity.

***Note on Net Metering***

The Atlas reports metered energy consumption. When customers have distributed energy resources (DERs), such as energy generation or storage assets installed behind the meter, the output of these assets can offset a fraction of their energy demand. In a small minority ofsome cases, it is even possible that a customer’s meter could register net “negative consumption” over a particular billing interval. This would happen during periods when the output of their behind the meter generation assets exceed their total energy demand. For this reason, the consumption values reported here reflect net energy demand, and not necessarily total energy consumption. This difference is due to the fundamental limitations of how energy consumption is currently metered by the utility providers. In areas where solar installations are more prevalent this could result in downward consumption trends that are due to an increase in solar installations, rather than a decrease in total electricity consumption overall. In future updates we will seek to provide additional context around this issue by reporting changes in the total number of net-metered customers within the different reporting geographies over time. Unfortunately, current utility metering infrastructure is fundamentally limited in terms of its ability to only record data for “net load” and not “total load,” absent the contribution of behind-the-meter DER assets.

### Parcels and Buildings

Building information (use type, year built, square footage) is sourced from parcel databases from county tax assessors. These datasets primarily reflect 2022/2318 parcel data for most counties.

See the Limitations section for more information about Parcel Data.

### Building Use Types

Building Use Types are determined from standardized land use codes from parcel data collected from each county.

#### Residential Use Types

* **Single Family**

* **Multi-Family**: Includes duplexes to large multi-family and condominiums.

  **Residential Other**: Mobile home parks, manufactured homes, nursing homes, rural residential, and unknown other residential use codes that do not clearly fit within single family or multi-family categories.

* **Residential Uncategorized**: Consumption that was categorized as residential from the utility sector designation, but unable to be linked to its parcel and thus unable to be categorized by parcel use type. Without parcel linkage, this consumption lacks square-footage and building vintage information.

* **Residential (Total)**: Sum of all residential sectors.

#### Nonresidential Use Types

* **Agricultural**

* **Commercial**: Offices, restaurants, shops, grocery stores, etc.

* **Industrial**: Manufacturing, warehouses, processing facilities, extraction sites, industrial operations, etc.

* **Institutional**: Government/public property, schools, churches, non-taxable property.

* **Other**: VAgriculture, vacant lands and, other miscellaneous land uses that do not easily fit into the previous categories.

**Omitted Data:** Some utility accounts do not necessarily fit into building use categories. These types of accounts were removed from parcel-based designation to ensure the consumption from these types of accounts are not mis-attributed to a building’s energy consumption. For example, streetlights or water pumps are not uses that relate to a building on a parcel, and have been aggregated into additional non-building based categories. These categories are available in the download dataset, but not visualized on the website as they are not building energy data.

#### Non-Building Related Uses (derived from utility account information) Available in the Download Data

* **TCU (Transportation/Communication/Utilities)**: Telecommunications and utility infrastructure unrelated to buildings (ie. telecom boxes, water pumps, etc). Also includes natural gas used for vehicles.

* **Streetlights**: Streetlight and Traffic Control.

Unfortunately, a total consumption value is not provided by this tool due to updated masking protocol. Although reverse calculation of individual masked use types has always been impossible due to masking protocols, the total option has been removed in an abundance of caution.

The energy consumption by building size map and data tables includes two usetypes: mutli-family and nonresidential (nonres). Multi-family refers to the residential use type described above. Nonres is the combined total of commercial, institutional, and other parcel use types.

### US Census/American Community Survey Data

Researchers use data from the US Census and the American Community Survey to investigate patterns in the relationships between energy consumption and demographic characteristics and income levels. Socio-economic information is taken from the American Community Survey 5-Year Estimates 2013-2017 for both census tracts and block groups. Researchers collected relevant tables using Social Explorer Professional Edition, a robust web interface to Census materials made available through UCLA professional subscription.

Most ACS-derived information on the Energy Atlas (population, income) is aggregated from block group level statistics to the administrative boundaries found on the site. The exception is population totals for cities, which was collected from 2017 California Department of Finance estimates\*. For zip codes and counties, population levels are calculated from the block group values; however, block group boundaries do not align perfectly with the zip code, or city boundaries presented in the front-end website. In order to provide the best estimates for population totals for each of these reference geographies, we used a two-step process. First, block groups whose boundaries are completely contained within each geography are assigned to the zip code and county that they are within. For those block groups on the boundaries of multiple counties or zip codes, we divide the population proportional to the area within each geography and assign totals based on these proportional distributions. A limitation of this process is the assumption of equal population distribution throughout a block group. Renter/Owner proportions are assigned based on the population aggregation methodology explained here. Median household incomes for each geography are derived from the median of all intersecting block groups’ reported median household income values within a geography.

\*Source: State of California, Department of Finance, E-5 Population and Housing Estimates for Cities, Counties and the State — January 1, 2011-2020. Sacramento, California, May 2020\.

### Administrative Boundaries

The Energy Atlas reports energy consumption statistics and analyses aggregated to four primary reference geographies within the Bay Area – census tracts, zip code tabulation areass, census placescities, and counties. While much of the analysis conducted was developed at the parcel and block group levels, researchers aggregated the results to the larger reference geographies in order to provide consistent outputs that adhere to customer privacy protections.

City and county and zip code boundaries were collected from the California State Geoportal. Some zip codes intersect counties out of scope to this project. Those have been removed because the data would be incomplete and potentially misleading.

All geographyCensus tracts and block group boundaries were downloaded from the Census TIGER/Line website. CalEnviroScreen 43.0 data was downloaded from the California Office of Environmental Health Hazard Assessment website.

### Masked vs. Unavailable Data

In some instances, energy consumption data for certain cities or neighborhoods is omitted from the Energy Atlas’s public site and data tables. Municipalities are omitted from publicly released datasets because they are either served by utilities other than those included in the Atlas, or because of the CPUC’s privacy aggregation guidelines. Geographies that are omitted because of lack of utility data are labeled as *not available*; geographies that are omitted due to privacy guidelines are referred to as *masked*.

In California, individual electricity and natural gas account information is protected as personally identifiable information (PII). Through non-disclosure agreements, UCLA gained access to account level information with the provision that the raw data can never be revealed publicly. To ensure no individual customer’s information is revealed, CCSC masks data which does not meet minimum aggregation thresholds to protect privacy. The Energy Atlas follows the guidelines set by the California Public Utilities Commission in 2014 (*D.14-05-016*). For nonresidential consumption, aggregated data must include a minimum of 15 customers with no single account’s consumption exceeding 15 percent of the group’s total energy use. For residential consumption, there must be at least 100 customers. If these conditions are not met, the aggregated consumption in a geography will be masked for privacy on the website.

### Units

Account-level consumption data from the utilities is reported in units of kilowatt-hours (kWh) for electricity and therms for natural gas. In order to provide information on the total combined energy, these values are first converted to British Thermal Units (BTUs). Total consumption is simply the sum of equivalent BTUs for both electricity and natural gas.

There are three main units displayed on the Bay Area Energy Atlas:

1. **Electricity**: Kilowatt-hour (kWh)

2. **Natural Gas**: Therm

3. **Combined electricity and natural gas consumption**: British Thermal Unit (BTU)

1 kWh \= 3,412.141633 BTU and 1 US Therm \= 99,976.129 BTU

Because BTUs are a sum of electricity and natural gas consumption, if either one is masked or not available, the combined sum cannot be released as BTUs to prevent revealing data by reverse calculation.

## Limitations

Despite our efforts to produce the most accurate data as possible, there are inherent limitations to each of the data sources listed here and in the methodologies used to generate these statistics.

**1\. Missing Non-PG\&E Consumption Data**

All aggregated reported totals only include PG\&E territory. Data for smaller publicly owned or other utilities are not included.

Non-PG\&E usage data from Healdsburg, Palo Alto, Alameda, Pittsburg Power Company Island Energy, Silicon Valley Power, Hetch Hetchy Power, Port of Oakland are not included in these totals. Additionally, usage data from Hercules in prior to 2014 is not included.

**2\. Parcel Data Errors and Gaps**

Much of the analysis presented in the Energy Atlas is predicated upon the assumption that parcel data for building use, size, vintage and design information are both accurate and complete. Parcel data is collected and maintained by individual counties, and some level of error is to be expected. Tax assessors’ data are known to undercount square footage and contain incomplete information for non-taxable properties such as churches, government buildings, schools and nonprofit organizations (deemed “institutional” use type in the Energy Atlas). For these buildings, consumption statistics relating to building size and year built often reflect these errors. Parcel data can also contain errors in land use types, which will be reflected in the reported energy consumption statistics by building use type, since parcels are the underlying source of information for designating these categories.

An additional limitation is that while the years of energy data span 2013 to 2017, the parcel data for the region corresponds to the year 2018, so changes to construction or land use during the study time frame may not be reflected at the precise moment of consumption.

MTC provided the standardized version of the parcel data used in this analysis. As MTC updates this data and shares with UCLA, the resulting aggregations will likely be updated on this website as well. Any updates to the underlying data will be noted in the Findings/Data Stories page.

The version of parcel data received by UCLA has data gaps, particularly for building attribute information including use type, year built, and square-footage. Because use type is integral to assigning a consumption use type category in this tool, UCLA attempted to fill in as many gaps as possible from other data sources. This was done by collecting publicly available parcel data and zoning information from each county where applicable. For some parcels, UCLA assigned null use types by determining the utility designated use type category from the account present on such a parcel (ie. NAICS code or sector ID from the utility billing data).

**3\. Utility Data Errors**

UCLA receives raw utility billing data from the CPUC. This raw data comes in a variety of formats, structures, and file types, and requires cleaning and preprocessing by the UCLA team. Raw data errors such as missing or incomplete data have been found to exist, especially while piecing together account-level data over time. UCLA spends a great deal of time attempting to identify and remedy these errors when possible, however there are limitations that we cannot overcome as we are not the original data owners.

**4\. Determining building and non-building related energy accounts**

This tool prioritizes distinguishing between building/parcel-related energy consumption vs. non-building related consumption in order to generate energy consumption statistics by building size, year built, and specific use type. In order to do this, meters belonging to non-building related accounts (streetlights, utility infrastructure, telecommunications infrastructure, etc.) must be aggregated separately. Identifying these types of accounts varies in difficulty. Streetlights are identified and aggregated based on their utility-given rate tarriff, which has a unique category for streetlights and traffic control lights.

The Transportation/Communications/Utility (TCU) category is more complicated. Utility-given NAICS codes are used to identify and aggregate these TCU accounts, and ensure the consumption is not related to building attributes.

Identifying the TCU accounts is not a perfect science, and is dependent upon the accuracy and completeness of the NAICS code provided by the PG\&E billing data. It is possible there are some non-parcel related accounts being attributed to building consumption metrics. UCLA continuously works to improve and refine these methods to generate the most accurate data as possible, given these limitations.

**5\. Census Aggregation Errors**

Demographic analysis of energy consumption relies on information from the US Census and American Community Surveys that sample a small percentage of the population each year and report estimates based on those samples. Their margins of error vary based on survey location, response rates, and other statistical factors. These errors cannot be corrected for, and are present in the Energy Atlas. Furthermore, population and income statistics for neighborhoods and cities are based on census block group level statistics. In some cases, boundaries of block groups cross zip code and city lines, making precise aggregation difficult. In these cases, population numbers are calculated based on the proportion of block group areas within each of the geographies they intersect, as described above.

**6\. Geocoding Error**

Geocoding physical addresses to their most precise spatial location is an imperfect science. Constructing accurate linkages between account level consumption, building, and demographic data depends on the accuracy with which service addresses can be mapped to the corresponding parcels where they are physically located.

Geocoding to the parcel level, a necessary step for matching consumption to building information, is especially challenging and error-prone because it is the most precise. UCLA used Google Geocoding API to link accounts to parcels where possible.

Residential account geocoding match rates tend to be higher than nonresidential account geocoding. This ultimately makes a difference in consumption values by use type, since most accounts are assigned a use type based on the linkage between account and parcel type. When accounts are unable to be linked to their parcel, we can sometimes designate them as residential based on utility designation, or industrial/commercial based on the utility-assigned NAICS code. For those accounts not geocoded to the parcel, they are geocoded to the street or zip code level. If these accounts cannot be categorized based on utilities sector designation (residential or nonresidential) or by NAICS code, they are then aggregated into the total consumption for neighborhoods and cities, based on their rate tariff type, which is less specific than NAICS code.

**7\. Data Masking Challenges**

The Energy Atlas must adhere to data privacy guidelines from the California Public Utilities Commission 2014 Decision 14-05-016 by Judge Sullivan. As such, geographies are masked if there are less than 15 nonresidential customers, or if one account consumes more than 15% of the total energy in a geography. For residential, there must be more than 100 customers. These privacy regulations trigger certain use types more than others. For example, industrial consumption is largely masked for a majority of geographies due to individual industrial customers consuming a disproportionate amount of energy in an area (i.e. refineries, large production facilities, etc.).

Due to the risk of reverse calculation and high levels of nonresidential masking, the Atlas is not able to provide total consumption figures for residential \+ nonresidential use types at this point.

## Data Preparation

The development of the data presented in the Atlas is a time-consuming and resource-intensive process. Utility data, parcel data, census data, and additional relevant datasets must be collected, standardized, mapped and linked spatially, and organized into a database capable of processing billions of records. Once the database is complete, aggregated statistics for each geography are queried, masked for privacy, and exported to the online host that generates all maps, tables, and data points for the public Energy Atlas website.

### Geocoding and Utility Data Standardization

Geocoding the account addresses is fundamental to linking account locations with other reference geographies such as cities, census blocks, and parcels. Geocoding is an iterative process and the success (match) rate varies based on the geocoding method, completeness of parcel reference data by county, completeness of utility account addresses, and level of accuracy. PG\&E meter addresses were geocoded to their parcel via Google Geocoding API.

Alt text: Table lists each county split into residential and nonresidential sectors, with statistics for the percent geocoded to parcel, geocoded to street, and geocoded to zip for both electricity and natural gas. Caption: Geocoding match rate of meter addresses by utility sector and county.

Not all meters are or should be associated with specific parcels. For example, telecommunications infrastructure dispersed throughout a neighborhood may be physically located on a parcel, but the energy use should not be attributed to that parcel’s energy consumption, or they may distort the energy use intensity statistics. Meters belonging to streetlights, traffic lights, and TCU non-building based accounts are intentionally removed from parcels for this reason, and aggregated separately.

Customer addresses have many internal inconsistencies in formatting and are organized differently from entity to entity. CCSC researchers process the addresses through SQL/regular expression batch “cleaning” in order to make them usable for the locators and geocoding tools. This process converts heterogeneous addresses strings into a standardized record format suitable for geocoding, as well as loading into the database.

When an address/account cannot be mapped to the parcel level, additional data from the utility is used to try to assign a use type to the account’s consumption. If the account is designated as residential from the utility, this consumption is summarized as “uncategorized residential” and added to the total residential consumption for the tract or city in which it was mapped. If the account is designated as nonresidential by the utility, NAICS codes are used (when provided) to assign consumption to commercial or industrial categories as appropriate. If an account has multiple NAICS codes associated with it, spanning multiple use types, categories are determined and assigned by hierarchy: industrial, commercial, then institutional. An important limitation is that associated building information like square-footage or building vintage is not available for these accounts and thus aggregated statistics related to building size and vintage will not be counted for consumption that is not linked to associated parcels. Thus, the aggregated statistics involving size and vintage are calculated only for parcel-geocoded accounts.

Alt text: Flow diagram showing usetype assignment starting at the meter. Is the meter mapped to a parcel? If yes, parcel is geocoded and assigned by parcel use type (single-family, multi-family, residential other, commercial, institutional, industrial, other). If no, street geocoded, NAICS is assigned, use type is defined as TCU or streetlight or Nonresidential (commercial, institutional, industrial, other). If meter lacks NAICS, rate is assigned. Caption: How meters are assigned an energy consumption use type category.

### Spatial Joins in PostgreSQL with PostGIS

The key to the Energy Atlas is the backend relational database and the ability to maintain spatial relationships among all datasets. The confidential backend utilizes an open-source PostgreSQL database system with PostGIS extension to manage these spatial relationships. Utility addresses are geocoded and spatially joined to associated parcel datasets, census data, and any other municipal or administrative boundaries. Additionally, parcel boundaries do not necessarily fit neatly within census or municipal boundaries. In these border cases, we assign a parcel to a specific census tract or city based on whether the parcel has 80% of its area within that geography. If the parcel is split by a geographic boundary and falls short of the 80% rule, we assign its geography based on the location of the parcel centroid.

### Monthly Billing Dates

Energy consumption billing data is organized around billing dates that are specific to individual customers. Some accounts have mid-month billing cycles, or billing dates that span multiple months (or even multiple years) for one charge. In these cases, UCLA attempts to calendarize consumption, or assign consumption to specific months. This process is done programmatically. First, for billing cycles under 35 days, consumption is assigned to the dominant month of the cycle. For billing cycles above 35 days, we check the start and end month where there are at least 15 billing days. Then the consumption is divided evenly across the total number of months between these billing start and end dates. In some occasions, billing cycles can span multiple years, which follows the same logic for dividing across months. Because the Energy Atlas website only shows annual data, this process is mostly invisible, however some billing cycles from December-January can attribute data for this cycle to one of these months in one year and not the other.

### Building Use Types

As discussed previously, a primary unit of analysis in this research is the megaparcel, a parcel layer whose attributes have been dissolved based upon its geometry. Each megaparcel is assigned a building type according to its use and construction design. The building type categories are based on use codes as assigned by the County Assessor and standardized by MTC.

CCSC researchers reclassified building types into 7 main categories of megaparcels (which include multiple overlapping parcels that are co-located or “stacked” within the same building, such as condominiums).

For residential parcels which did not clearly fall within the single family and multi-family categories, a new category of “residential other” was created, to include parcels for mobile homes and trailer parks, rural residential, boarding houses, manufactured homes, and unknown residential use codes that did not clearly fall under the single family or multi-family category. All three of these major residential use types are combined together to form a “residential” total reported for each geography. If a parcel use code does not fit into one of the pre-set categories, it is placed into the “other” category, which spans a diverse range of uses including vacant land, agriculture, and miscellaneous others.

### Security

Researchers gained access to the data through negotiated non-disclosure agreements. Per these agreements, CCSC worked with UCLA Information Technology Services to develop strict privacy and security protocols for accessing the data and displaying it on the website. The underlying disaggregated data itself is stored in a secure environment that has no interface with the website. There is limited access by researchers to the disaggregated data and each authorized researcher must comply with security protocols. The data is in a secure location that is heavily monitored and has very limited access. The data on the website is aggregated for analysis and displayed in such a way that no individual customer’s consumption can be identified.
