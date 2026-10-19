### uBlock Origin Filter
 - [ublock origin addon ](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)

### Facebook blocks

#### Suggested Posts
```
facebook.com##:is([aria-posinset],[aria-describedby]:not([aria-posinset])):has-text(Suggested for you):style(height:0!important;overflow:hidden!important;)
```
#### People You May Know
```
facebook.com##:is([aria-posinset],[aria-describedby]:not([aria-posinset])):has-text(People You May Know):remove()
```

#### Suggested groups
```
facebook.com##[aria-posinset] [aria-label="See more groups"][href="/groups/discover/"]:upward([aria-posinset])
```
   - Add custom filters in **uBlock Origin**:
   - open the dashboard by clicking the extension icon
   - select  **dashboard** icon (four squares).
   - Navigate to the **My filters** tab
   - check the **Enable my custom filters** box if not already active
   - paste  rules into the text editor. Click **Apply changes** to save.
   - Common filter examples include:

Notes
*   **Block specific google docs:** `||accounts.google.com/gsi/iframe/select$subdocument`
*   **Block a specific page or directory:** `||example.com/unwanted-page^$document`
*   **Hide a specific HTML element (cosmetic filter):** `example.com##div.ad-banner`
*   **Block network requests:** `||ads.example.com^$third-party`
*   **Allow a blocked item (exception):** `@@||ads.example.com^$third-party`
```


