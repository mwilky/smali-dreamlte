.class Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;
.super Landroid/database/ContentObserver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemGestureManager"
.end annotation


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mIsEnabledFpMotion:Z

.field mIsEnabledGestureForSpay:Z

.field mIsEnabledGestureForStatusBar:Z

.field mSemStatusBarManager:Landroid/app/SemStatusBarManager;

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/app/SemStatusBarManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/SemStatusBarManager;

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mSemStatusBarManager:Landroid/app/SemStatusBarManager;

    return-void
.end method

.method private controlStatusBar(Z)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mSemStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mSemStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v1}, Landroid/app/SemStatusBarManager;->expandQuickSettingsPanel()V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "FPGT"

    const-string v4, "ExpandQuickSettingsPanel"

    const-wide/16 v5, -0x1

    const/4 v7, 0x3

    invoke-static/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mSemStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v1}, Landroid/app/SemStatusBarManager;->expandNotificationsPanel()V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "FPGT"

    const-string v4, "ExpandNotificationPanel"

    const-wide/16 v5, -0x1

    const/4 v7, 0x3

    invoke-static/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mSemStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v1}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "FPGT"

    const-string v4, "CollapseNotificationPanel"

    const-wide/16 v5, -0x1

    const/4 v7, 0x3

    invoke-static/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "semControlStatusBar : failed "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static synthetic lambda$setGestureMode$0(Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;ILjava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->access$5702(Lcom/android/server/fingerprint/FingerprintService;I)I

    return-void
.end method

.method private launchSamsungPay()V
    .locals 8

    const-string v0, "FingerprintService"

    const-string v1, "Launch SamsungPay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.spay.gesture.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.spay.permission.SIMPLE_PAY"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "FPGT"

    const-string v4, "SimpleSamsungPay"

    const-wide/16 v5, -0x1

    const/4 v7, 0x3

    invoke-static/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method


# virtual methods
.method handleGestureEvent(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$5900(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "handleGestureEvent : skip action because of DeX"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;)V

    const/16 v0, 0x4e21

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mSemStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleAcquired : QuickPanel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForStatusBar:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->controlStatusBar(Z)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForSpay:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->launchSamsungPay()V

    :cond_3
    :goto_0
    goto :goto_1

    :cond_4
    const/16 v0, 0x4e22

    if-ne p1, v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForStatusBar:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->controlStatusBar(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method isEnabledGestureMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledFpMotion:Z

    return v0
.end method

.method public observe(Z)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "fingerprint_gesture_quick"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "fingerprint_gesture_spay"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v2

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemGestureManager.observe["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    nop

    const-string v1, "FingerprintService"

    const-string v2, "SemGestureManager.observe : failed : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public onChange(Z)V
    .locals 3

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemGestureManager.onChange : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledFpMotion:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->readValue()V

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledFpMotion:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setGestureMode(II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setGestureMode(II)V

    :goto_0
    return-void
.end method

.method public readValue()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "fingerprint_gesture_quick"

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForStatusBar:Z

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "fingerprint_gesture_spay"

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v4

    invoke-static {v1, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForSpay:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "readValue : failure to read value"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForSpay:Z

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForStatusBar:Z

    :goto_2
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForStatusBar:Z

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledFpMotion:Z

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemGestureManager.readValue : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForStatusBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForSpay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method setGestureMode(II)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "setGestureMode: no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v7, v1

    const/4 v3, 0x0

    new-instance v6, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$SemGestureManager$hALcno5ElqjCK6skzDYpLbl95To;

    invoke-direct {v6, p0}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$SemGestureManager$hALcno5ElqjCK6skzDYpLbl95To;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;)V

    move-object v1, v0

    move v2, p1

    move v4, p2

    invoke-interface/range {v1 .. v6}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->request(IIILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;)V

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semManageNavigationMode : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]  request FP_FINISH ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms) RESULT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$5700(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xf

    const/4 v2, 0x2

    if-ne p1, v1, :cond_1

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$5800(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->add(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    if-ne p1, v1, :cond_2

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$5800(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "setGestureMode : failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
