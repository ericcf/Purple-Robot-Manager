(define pr-read-url (lambda (url) (.readUrl PurpleRobot url)))
(define pr-launch-url (lambda (url)  (.launchUrl PurpleRobot url)))
(define pr-version (lambda () (.version PurpleRobot)))
(define pr-version-code (lambda () (.versionCode PurpleRobot)))
(define pr-play-default-tone (lambda () (.playDefaultTone PurpleRobot)))
(define pr-play-default-tone (lambda () (.playDefaultTone PurpleRobot)))
(define pr-emit-toast (lambda (message long-duration) (.emitToast PurpleRobot message long-duration)))
(define pr-update-config (lambda (key value) (.updateConfig PurpleRobot key value)))
(define pr-set-user-id (lambda (user-id) (.setUserId PurpleRobot user-id)))
(define pr-restore-default-id (lambda () (.restoreDefaultId PurpleRobot)))
(define pr-disable-background-image (lambda () (.disableBackgroundImage PurpleRobot)))
(define pr-enable-background-image (lambda () (.enableBackgroundImage PurpleRobot)))
(define pr-clear-password (lambda () (.clearPassword PurpleRobot)))
(define pr-set-password (lambda (password) (.setPassword PurpleRobot password)))
(define pr-update-config-url (lambda (url) (.updateConfigUrl PurpleRobot url)))
(define pr-enable-probes (lambda () (.enableProbes PurpleRobot)))
(define pr-disable-probes (lambda () (.disableProbes PurpleRobot)))
(define pr-enable-trigger (lambda (trigger-id) (.enableTrigger PurpleRobot trigger-id)))
(define pr-disable-trigger (lambda (trigger-id) (.disableTrigger PurpleRobot trigger-id)))
(define pr-reset-trigger (lambda (trigger-id) (.resetTrigger PurpleRobot trigger-id)))
(define pr-enable-trigger (lambda (trigger-id) (.enableTrigger PurpleRobot trigger-id)))
(define pr-log (lambda (message) (.log PurpleRobot message)))
(define pr-launch-application (lambda (app-name) (.launchApplication PurpleRobot app-name)))
(define pr-play-tone (lambda (ringtone) (.playTone PurpleRobot ringtone)))
(define pr-vibrate (lambda (pattern) (.vibrate PurpleRobot pattern)))
(define pr-persist-string (lambda (key value) (.persistString PurpleRobot key value)))
(define pr-fetch-string (lambda (key) (.fetchString PurpleRobot key)))
(define pr-persist-encrypted-string (lambda (key value) (.persistEncryptedString PurpleRobot key value)))
(define pr-fetch-encrypted-string (lambda (key) (.fetchEncryptedString PurpleRobot key)))
(define pr-update-config (lambda (config-list) (.updateConfig PurpleRobot config-list)))
(define pr-update-trigger (lambda (trigger-config) (.updateTrigger PurpleRobot trigger-config)))
(define pr-schedule-script (lambda (identifier date-string action) (.scheduleScript PurpleRobot identifier date-string action)))
(define pr-update-probe (lambda (probe-config) (.updateProbe PurpleRobot probe-config)))
(define pr-update-widget (lambda (widget-config) (.updateWidget PurpleRobot widget-config)))
(define pr-emit-reading (lambda (reading-name value) (.emitReading PurpleRobot read-name value)))
(define pr-broadcast-intent (lambda (action extras) (.broadcastIntent PurpleRobot action extras)))
(define pr-launch-application(lambda (app-name params post-script) (.launchApplication PurpleRobot app-name params post-script)))
(define pr-show-application-launch-notification (lambda (title message app-name timestamp params post-script) (.showApplicationLaunchNotification PurpleRobot title message app-name timestamp params post-script)))
(define pr-show-native-dialog (lambda (title message confirm-title cancel-title confirm-script cancel-script) (.showNativeDialog PurpleRobot title message confirm-title cancel-title confirm-script cancel-script)))
(define pr-fetch-config (lambda () (.fetchConfig PurpleRobot)))
(define pr-date->components (lambda (date) (.dateToComponents PurpleRobot date)))
(define pr-components->date (lambda (action components) (.dateFromComponents PurpleRobot components)))
(define pr-nth (lambda (index pairs) (.nth PurpleRobot index pairs)))
(define pr-fetch-label (lambda (context name) (.fetchLabel PurpleRobot context name)))
(define pr-fetch-labels (lambda (context name labels) (.fetchLabels PurpleRobot context name labels)))
                                    