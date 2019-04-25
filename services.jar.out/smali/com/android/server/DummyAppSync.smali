.class Lcom/android/server/DummyAppSync;
.super Lcom/android/server/AppSyncWrapper;
.source "AlarmManagerServiceExt.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AppSyncWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public disableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public doDump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    const-string v0, "  <AppSync3 Disabled>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lookForNonAdjustableAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;J)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public scheduleAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "___SyncScheduler (v3) DEACTIVATED___"

    return-object v0
.end method
