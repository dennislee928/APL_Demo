# Axiom Spectrum 查詢

這個專案包含用於分析 Cloudflare Spectrum 流量的 Axiom APL (Axiom 查詢語言) 檔案。

## 檔案

以下是專案中包含的 APL 檔案及其用途：

- **`spectrum_Blocked_Mitigated_Requests.apl`**:
  - **描述**: 顯示按小時分組的已阻止和緩解請求的數量，並按緩解範圍進行分組。
  - **用途**: 識別和監控已阻止和緩解的 Spectrum 流量。
  - **欄位**:
    - `_time`: 時間戳記，以小時為單位。
    - `MitigationScope`: 緩解範圍。
    - `blocked_requests`: 阻止的請求數量。
- **`spectrum_Request_destination_ports.apl`**:
  - **描述**: 顯示按小時分組的請求數量和總 MB 數，並按目標端口和目標 ASN 名稱進行分組。
  - **用途**: 分析流量到特定目標端口和 ASN 的情況。
  - **欄位**:
    - `_time`: 時間戳記，以小時為單位。
    - `DestinationPort`: 目標端口。
    - `DestinationASNName`: 目標 ASN 名稱。
    - `request_count`: 請求數量。
    - `total_MB`: 總 MB 數。
- **`spectrum_time_series.apl`**:
  - **描述**: 顯示 Spectrum 事件的計數，按自動分組的時間段分組。
  - **用途**: 建立 Spectrum 流量的時間序列圖。
  - **欄位**:
    - `_time`: 時間戳記，由 `bin_auto()` 函數自動分組。
    - `count()`: 事件計數。
- **`spectrum_total_traffic.apl`**:
  - **描述**: 顯示按小時分組的總請求數、客戶端位元組總數和原始位元組總數。
  - **用途**: 監控 Spectrum 流量的總體趨勢。
  - **欄位**:
    - `_time`: 時間戳記，以小時為單位。
    - `total_requests`: 總請求數。
    - `total_client_bytes`: 客戶端位元組總數。
    - `total_origin_bytes`: 原始位元組總數。
- **`spectrum_zone_traffic.apl`**:
  - **描述**: 顯示特定 Zone ID 的 Spectrum 事件計數，按自動分組的時間段分組。
  - **用途**: 監控特定 Zone 的 Spectrum 流量。
  - **欄位**:
    - `_time`: 時間戳記，由 `bin_auto()` 函數自動分組。
    - `count()`: 事件計數。

## 使用方法

1.  **Axiom 帳戶**: 您需要一個 Axiom 帳戶才能執行這些查詢。
2.  **Cloudflare 記錄**: 確保您的 Cloudflare 記錄已配置為將 Spectrum 事件推送到 Axiom。
3.  **匯入 APL 檔案**: 將這些 `.apl` 檔案匯入到您的 Axiom 工作區中。
4.  **執行查詢**: 在 Axiom 介面中執行這些查詢。您可以根據需要修改查詢以滿足您的特定需求。
    - 對於 `spectrum_zone_traffic.apl`，請將 `your_zone_id` 替換為您的 Cloudflare Zone ID。

## 貢獻

歡迎貢獻。如果您有改進或新的查詢，請提交拉取請求。

## 授權

此專案使用 [MIT 授權](https://opensource.org/licenses/MIT)。
