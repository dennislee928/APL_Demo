# Axiom Spectrum Queries

This project contains Axiom APL (Axiom Query Language) files for analyzing Cloudflare Spectrum traffic.

## Files

The following are the APL files included in the project and their purposes:

- **`spectrum_Blocked_Mitigated_Requests.apl`**:
  - **Description**: Displays the number of blocked and mitigated requests grouped by hour and by mitigation scope.
  - **Purpose**: Identify and monitor blocked and mitigated Spectrum traffic.
  - **Fields**:
    - `_time`: Timestamp, in hours.
    - `MitigationScope`: Mitigation scope.
    - `blocked_requests`: Number of blocked requests.
- **`spectrum_Request_destination_ports.apl`**:
  - **Description**: Displays the number of requests and total MBs grouped by hour and by destination port and destination ASN name.
  - **Purpose**: Analyze traffic to specific destination ports and ASNs.
  - **Fields**:
    - `_time`: Timestamp, in hours.
    - `DestinationPort`: Destination port.
    - `DestinationASNName`: Destination ASN name.
    - `request_count`: Number of requests.
    - `total_MB`: Total MBs.
- **`spectrum_time_series.apl`**:
  - **Description**: Displays the count of Spectrum events, grouped by automatically binned time periods.
  - **Purpose**: Create a time series graph of Spectrum traffic.
  - **Fields**:
    - `_time`: Timestamp, automatically binned by the `bin_auto()` function.
    - `count()`: Event count.
- **`spectrum_total_traffic.apl`**:
  - **Description**: Displays the total number of requests, total client bytes, and total origin bytes, grouped by hour.
  - **Purpose**: Monitor overall trends in Spectrum traffic.
  - **Fields**:
    - `_time`: Timestamp, in hours.
    - `total_requests`: Total number of requests.
    - `total_client_bytes`: Total client bytes.
    - `total_origin_bytes`: Total origin bytes.
- **`spectrum_zone_traffic.apl`**:
  - **Description**: Displays the count of Spectrum events for a specific Zone ID, grouped by automatically binned time periods.
  - **Purpose**: Monitor Spectrum traffic for a specific Zone.
  - **Fields**:
    - `_time`: Timestamp, automatically binned by the `bin_auto()` function.
    - `count()`: Event count.

## Usage

1.  **Axiom Account**: You need an Axiom account to execute these queries.
2.  **Cloudflare Logs**: Ensure your Cloudflare logs are configured to push Spectrum events to Axiom.
3.  **Import APL Files**: Import these `.apl` files into your Axiom workspace.
4.  **Execute Queries**: Execute these queries in the Axiom interface. You can modify the queries as needed to meet your specific requirements.
    - For `spectrum_zone_traffic.apl`, replace `your_zone_id` with your Cloudflare Zone ID.

## Contribution

Contributions are welcome. If you have improvements or new queries, please submit a pull request.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
