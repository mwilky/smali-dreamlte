.class public Lcom/android/server/timezone/PackageTracker;
.super Ljava/lang/Object;
.source "PackageTracker.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "timezone.PackageTracker"


# instance fields
.field private mCheckFailureCount:I

.field private mCheckTimeAllowedMillis:I

.field private mCheckTriggered:Z

.field private final mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

.field private mDataAppPackageName:Ljava/lang/String;

.field private mDelayBeforeReliabilityCheckMillis:I

.field private final mElapsedRealtimeClock:Ljava/time/Clock;

.field private mFailedCheckRetryCount:J

.field private final mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

.field private mLastTriggerTimestamp:Ljava/lang/Long;

.field private final mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

.field private final mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

.field private mTrackingEnabled:Z

.field private mUpdateAppPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/time/Clock;Lcom/android/server/timezone/ConfigHelper;Lcom/android/server/timezone/PackageManagerHelper;Lcom/android/server/timezone/PackageStatusStorage;Lcom/android/server/timezone/PackageTrackerIntentHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    iput-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mElapsedRealtimeClock:Ljava/time/Clock;

    iput-object p2, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    iput-object p3, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iput-object p4, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    iput-object p5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    return-void
.end method

.method static create(Landroid/content/Context;)Lcom/android/server/timezone/PackageTracker;
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v6

    new-instance v2, Lcom/android/server/timezone/PackageTrackerHelperImpl;

    invoke-direct {v2, p0}, Lcom/android/server/timezone/PackageTrackerHelperImpl;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "timezone"

    invoke-static {v0, v1}, Landroid/os/FileUtils;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    new-instance v8, Lcom/android/server/timezone/PackageTracker;

    new-instance v4, Lcom/android/server/timezone/PackageStatusStorage;

    invoke-direct {v4, v7}, Lcom/android/server/timezone/PackageStatusStorage;-><init>(Ljava/io/File;)V

    new-instance v5, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;

    invoke-direct {v5, p0}, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;-><init>(Landroid/content/Context;)V

    move-object v0, v8

    move-object v1, v6

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezone/PackageTracker;-><init>(Ljava/time/Clock;Lcom/android/server/timezone/ConfigHelper;Lcom/android/server/timezone/PackageManagerHelper;Lcom/android/server/timezone/PackageStatusStorage;Lcom/android/server/timezone/PackageTrackerIntentHelper;)V

    return-object v8
.end method

.method private isCheckInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCheckResponseOverdue()Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private static logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    const-string/jumbo v0, "timezone.PackageTracker"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private lookupInstalledPackageVersions()Lcom/android/server/timezone/PackageVersions;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/server/timezone/PackageManagerHelper;->getInstalledPackageVersion(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/server/timezone/PackageManagerHelper;->getInstalledPackageVersion(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    new-instance v4, Lcom/android/server/timezone/PackageVersions;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/server/timezone/PackageVersions;-><init>(JJ)V

    return-object v4

    :catch_0
    move-exception v0

    const-string/jumbo v1, "timezone.PackageTracker"

    const-string v2, "lookupInstalledPackageVersions: Unable to resolve installed package versions"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private setCheckComplete()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    return-void
.end method

.method private setCheckInProgress()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    return-void
.end method

.method private throwIfDeviceSettingsOrAppsAreBad()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    const-string v1, "Update app package name missing."

    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageTracker;->throwRuntimeExceptionIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    const-string v1, "Data app package name missing."

    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageTracker;->throwRuntimeExceptionIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/server/timezone/PackageManagerHelper;->isPrivilegedApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    nop

    const-string/jumbo v0, "timezone.PackageTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is valid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/server/timezone/PackageManagerHelper;->isPrivilegedApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_0

    nop

    const-string/jumbo v0, "timezone.PackageTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be a priv-app."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not determine data app package details for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be a priv-app."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not determine update app package details for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCheckTimeAllowedMillis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFailedRetryCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static throwRuntimeExceptionIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private validateDataAppManifest()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    const-string v1, "com.android.timezone"

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/server/timezone/PackageManagerHelper;->contentProviderRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "timezone.PackageTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateDataAppManifest: Data app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not expose the required provider with authority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.android.timezone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private validateUpdaterAppManifest()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    const-string v3, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v1, v2, v3}, Lcom/android/server/timezone/PackageManagerHelper;->usesPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "timezone.PackageTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validateUpdaterAppManifest: Updater app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not use permission="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/app/timezone/RulesUpdaterContract;->createUpdaterIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.permission.TRIGGER_TIME_ZONE_RULES_CHECK"

    invoke-interface {v1, v2, v3}, Lcom/android/server/timezone/PackageManagerHelper;->receiverRegistered(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "timezone.PackageTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "validateUpdaterAppManifest: Updater app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not expose the required broadcast receiver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageTrackerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/timezone/PackageTracker;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/timezone/PackageStatusStorage;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected getCheckFailureCountForTests()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    return v0
.end method

.method protected declared-synchronized recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "timezone.PackageTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordOperationResult: checkToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const-string/jumbo v0, "timezone.PackageTracker"

    const-string/jumbo v1, "recordCheckResult: Tracking is disabled and no token has been provided. Resetting tracking state."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "timezone.PackageTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordCheckResult: Tracking is disabled and a token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has been unexpectedly provided. Resetting tracking state."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v0}, Lcom/android/server/timezone/PackageStatusStorage;->resetCheckState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    :try_start_1
    const-string/jumbo v1, "timezone.PackageTracker"

    const-string/jumbo v2, "recordCheckResult: Unexpectedly missing checkToken, resetting storage state."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v1}, Lcom/android/server/timezone/PackageStatusStorage;->resetCheckState()V

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v2, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V

    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/timezone/PackageStatusStorage;->markChecked(Lcom/android/server/timezone/CheckToken;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->setCheckComplete()V

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {v2}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V

    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v2, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V

    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "timezone.PackageTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recordCheckResult: could not update token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ". Optimistic lock failure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v2, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V

    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized start()Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->isTrackingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "timezone.PackageTracker"

    const-string v2, "Time zone updater / data package tracking explicitly disabled."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->getUpdateAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->getDataAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->getCheckTimeAllowedMillis()I

    move-result v0

    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->getFailedCheckRetryCount()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    const v2, 0xea60

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->throwIfDeviceSettingsOrAppsAreBad()V

    iput-boolean v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTriggered:Z

    iput v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v0}, Lcom/android/server/timezone/PackageStatusStorage;->initialize()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :try_start_3
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->initialize(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/timezone/PackageTracker;)V

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V

    const-string/jumbo v0, "timezone.PackageTracker"

    const-string v1, "Time zone updater / data package tracking enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "timezone.PackageTracker"

    const-string v3, "PackageTracker storage could not be initialized."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageTracker{mTrackingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUpdateAppPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDataAppPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mCheckTimeAllowedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDelayBeforeReliabilityCheckMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFailedCheckRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLastTriggerTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCheckTriggered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTriggered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCheckFailureCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized triggerUpdateIfNeeded(Z)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->validateUpdaterAppManifest()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->validateDataAppManifest()Z

    move-result v1

    if-eqz v0, :cond_a

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_4

    iget-boolean v2, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTriggered:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "timezone.PackageTracker"

    const-string/jumbo v3, "triggerUpdateIfNeeded: First reliability trigger."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->isCheckInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->isCheckResponseOverdue()Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "timezone.PackageTracker"

    const-string/jumbo v3, "triggerUpdateIfNeeded: checkComplete call is not yet overdue. Not triggering."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v3, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget v2, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    const-string/jumbo v2, "timezone.PackageTracker"

    const-string/jumbo v3, "triggerUpdateIfNeeded: number of allowed consecutive check failures exceeded. Stopping reliability triggers until next reboot or package update."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {v2}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iget v2, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    if-nez v2, :cond_4

    const-string/jumbo v2, "timezone.PackageTracker"

    const-string/jumbo v3, "triggerUpdateIfNeeded: No reliability check required. Last check was successful."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {v2}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->lookupInstalledPackageVersions()Lcom/android/server/timezone/PackageVersions;

    move-result-object v2

    if-nez v2, :cond_5

    const-string/jumbo v3, "timezone.PackageTracker"

    const-string/jumbo v4, "triggerUpdateIfNeeded: currentInstalledVersions was null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {v3}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_4
    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v3}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatus()Lcom/android/server/timezone/PackageStatus;

    move-result-object v3

    if-nez v3, :cond_6

    const-string/jumbo v4, "timezone.PackageTracker"

    const-string/jumbo v5, "triggerUpdateIfNeeded: No package status data found. Data check needed."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object v4, v3, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v4, v2}, Lcom/android/server/timezone/PackageVersions;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "timezone.PackageTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "triggerUpdateIfNeeded: Stored package versions="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", do not match current package versions="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". Triggering check."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string/jumbo v4, "timezone.PackageTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "triggerUpdateIfNeeded: Stored package versions match currently installed versions, currentInstalledVersions="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", packageStatus.mCheckStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v3, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    const-string/jumbo v4, "timezone.PackageTracker"

    const-string/jumbo v5, "triggerUpdateIfNeeded: Prior check succeeded. No need to trigger."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {v4}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_8
    :goto_1
    :try_start_5
    iget-object v4, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v4, v2}, Lcom/android/server/timezone/PackageStatusStorage;->generateCheckToken(Lcom/android/server/timezone/PackageVersions;)Lcom/android/server/timezone/CheckToken;

    move-result-object v4

    if-nez v4, :cond_9

    const-string/jumbo v5, "timezone.PackageTracker"

    const-string/jumbo v6, "triggerUpdateIfNeeded: Unable to generate check token. Not sending check request."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v6, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_9
    :try_start_6
    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {v5, v4}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->sendTriggerUpdateCheck(Lcom/android/server/timezone/CheckToken;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTriggered:Z

    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->setCheckInProgress()V

    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v6, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :cond_a
    :goto_2
    :try_start_7
    const-string/jumbo v2, "timezone.PackageTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No update triggered due to invalid application manifest entries. updaterApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", dataApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {v2}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :cond_b
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call. Tracking is disabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
