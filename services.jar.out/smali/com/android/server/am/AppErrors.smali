.class Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrors$BadProcessInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAppsNotReportingCrashes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .locals 3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    iput-wide p2, v0, Landroid/app/ApplicationErrorReport;->time:J

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v1, :cond_4

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ApplicationErrorReport;->type:I

    new-instance v1, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_2

    :cond_4
    :goto_1
    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    iput-object p4, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    :cond_5
    :goto_2
    return-object v0
.end method

.method private generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 2

    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object p6, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    return-object v0
.end method

.method private handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v7, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    const/4 v10, 0x0

    if-nez v0, :cond_0

    return v10

    :cond_0
    const/4 v11, 0x0

    if-eqz v8, :cond_1

    :try_start_0
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    move-object v0, v11

    :goto_0
    if-eqz v8, :cond_2

    iget v1, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_1

    :cond_2
    move/from16 v1, p8

    :goto_1
    move v6, v1

    if-eqz v8, :cond_3

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_2

    :cond_3
    move/from16 v1, p9

    :goto_2
    move v5, v1

    iget-object v1, v7, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v1, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object v13, v0

    move v14, v6

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-wide/from16 v17, p6

    move-object/from16 v19, v1

    invoke-interface/range {v12 .. v19}, Landroid/app/IActivityController;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "1"

    const-string/jumbo v2, "ro.debuggable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_4

    const-string v1, "Native crash"

    iget-object v2, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip killing native crashed app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") during testing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v5

    move v15, v6

    goto :goto_3

    :cond_4
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force-killing crashed app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at watcher\'s request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_5

    const/4 v13, 0x0

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v14, v5

    move-object/from16 v5, p5

    move v15, v6

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "crash"

    invoke-virtual {v8, v1, v12}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_5
    move v14, v5

    move v15, v6

    invoke-static {v15}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v14, v15}, Lcom/android/server/am/ActivityManagerService;->killProcessGroup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    return v12

    :cond_7
    goto :goto_5

    :goto_4
    nop

    iget-object v1, v7, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v11, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    :goto_5
    return v10
.end method

.method static isInterestingForBackgroundTraces(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasTopUi:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasOverlayUi:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    nop

    :cond_3
    :goto_0
    return v2
.end method

.method private makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    const-string/jumbo v3, "force-crash"

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v0

    return v0
.end method

.method private makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    return-void
.end method

.method private sendAppStateMsg(ILjava/lang/String;II)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput p4, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method final appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
    .locals 53

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v12, p5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v0

    new-instance v0, Landroid/util/SparseArray;

    const/16 v3, 0x14

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    move-object v10, v0

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v3, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-interface {v0, v3, v4, v12}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    iget v3, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v4, :cond_1

    const-string/jumbo v3, "iqi"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3, v4, v9}, Lcom/android/server/am/AppStateBroadcasterA;->sendApplicationStop(Ljava/lang/String;II)V

    :cond_0
    const-string v3, "anr"

    invoke-virtual {v13, v3, v7}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v8, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "anr_show_background"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v7

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_1
    move/from16 v16, v0

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v3, "0x4f4c"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0x494d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->getBinderTransactionInfo(I)Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v8

    :goto_2
    move-object v3, v0

    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    if-eqz v0, :cond_5

    :try_start_2
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "During shutdown skipping ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v28, v3

    move-object/from16 v23, v10

    move-object/from16 v25, v11

    move-object v15, v12

    :goto_3
    move-wide v9, v5

    move/from16 v6, p4

    goto/16 :goto_25

    :cond_5
    :try_start_3
    iget-boolean v0, v13, Lcom/android/server/am/ProcessRecord;->notResponding:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_6

    :try_start_4
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping duplicate ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_6
    :try_start_5
    iget-boolean v0, v13, Lcom/android/server/am/ProcessRecord;->crashing:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_f

    if-eqz v0, :cond_7

    :try_start_6
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashing app skipping ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_7
    :try_start_7
    iget-boolean v0, v13, Lcom/android/server/am/ProcessRecord;->killedByAm:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_f

    if-eqz v0, :cond_8

    :try_start_8
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App already killed by AM skipping ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_8
    :try_start_9
    iget-boolean v0, v13, Lcom/android/server/am/ProcessRecord;->killed:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_9

    :try_start_a
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping died app ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_9
    const/16 v19, 0x5

    const/16 v20, 0x5

    const/16 v21, 0x1

    :try_start_b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v22

    const-string v23, "AppErrors"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ANR occurred in application "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v25, v0

    invoke-static/range {v19 .. v25}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v13, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string v30, "ANR"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_f

    if-eqz v14, :cond_a

    :try_start_c
    iget-object v2, v14, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object/from16 v31, v2

    goto :goto_4

    :cond_a
    nop

    const/16 v31, 0x0

    :goto_4
    if-eqz v12, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ANR "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    :cond_b
    :try_start_d
    const-string v2, "ANR"

    :goto_5
    move-object/from16 v32, v2

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v0

    move-object/from16 v28, v9

    move/from16 v29, v4

    invoke-virtual/range {v27 .. v34}, Lcom/android/server/am/ActivityManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    const/16 v0, 0x7538

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, v13, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v2, v7

    iget v4, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v2, v7

    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v4, v2, v9

    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v2, v7

    const/4 v4, 0x4

    aput-object v12, v2, v4

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_f

    if-nez v16, :cond_c

    :try_start_e
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/AppErrors;->isInterestingForBackgroundTraces(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_14

    :try_start_f
    iget v2, v13, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v15, :cond_d

    :try_start_10
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_d

    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v4, :cond_d

    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move v2, v4

    :cond_d
    :try_start_11
    iget v4, v13, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eq v2, v4, :cond_e

    :try_start_12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz v3, :cond_10

    iget-object v4, v3, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->javaPids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    move-object/from16 v38, v19

    move-object/from16 v9, v38

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_f

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_f
    nop

    const/4 v9, 0x2

    goto :goto_7

    :cond_10
    :try_start_13
    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    iget v9, v13, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eq v4, v9, :cond_11

    :try_start_14
    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v2, :cond_11

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :cond_11
    :try_start_15
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v9, 0x1

    sub-int/2addr v4, v9

    :goto_8
    if-ltz v4, :cond_14

    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_12

    iget-object v7, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v7, :cond_12

    iget v7, v9, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    if-lez v7, :cond_12

    move-object/from16 v41, v3

    :try_start_16
    iget v3, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v7, v3, :cond_13

    if-eq v7, v2, :cond_13

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v7, v3, :cond_13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v25, v11

    move-object v15, v12

    move-object/from16 v28, v41

    goto/16 :goto_3

    :cond_12
    move-object/from16 v41, v3

    :cond_13
    :goto_9
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v3, v41

    const/4 v7, 0x3

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v28, v3

    move-object/from16 v23, v10

    move-object/from16 v25, v11

    move-object v15, v12

    move-wide v9, v5

    move/from16 v6, p4

    goto/16 :goto_25

    :cond_14
    move-object/from16 v41, v3

    :try_start_17
    monitor-exit v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move/from16 v19, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "ANR in "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_15

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v0, :cond_15

    const-string v0, " ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PID: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_16

    const-string v0, "Reason: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    if-eqz v15, :cond_17

    if-eq v15, v14, :cond_17

    const-string v0, "Parent: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    move-object v8, v0

    const/4 v0, 0x0

    if-eqz v19, :cond_1a

    const/4 v2, 0x0

    :goto_a
    sget-object v3, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_19

    sget-object v3, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    iget-object v3, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v4, v7

    move-object v0, v4

    goto :goto_b

    :cond_18
    const/4 v7, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    const/4 v7, 0x0

    :goto_b
    move-object v7, v0

    goto :goto_e

    :cond_1a
    const/4 v7, 0x0

    const-string/jumbo v2, "ro.hardware.chipname"

    const-string/jumbo v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SDM845"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "SM8150"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_c

    :cond_1b
    sget-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    goto :goto_b

    :cond_1c
    :goto_c
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "skip backtrace of surfaceflinger. chipset("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_d
    sget-object v7, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v7, v7

    if-ge v4, v7, :cond_1e

    sget-object v7, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    aget-object v7, v7, v4

    move-object/from16 v43, v0

    const-string v0, "/system/bin/surfaceflinger"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v43

    goto :goto_d

    :cond_1e
    move-object/from16 v43, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_b

    :goto_e
    if-nez v7, :cond_1f

    const/4 v0, 0x0

    goto :goto_f

    :cond_1f
    invoke-static {v7}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    :goto_f
    move-object v4, v0

    const/4 v0, 0x0

    if-eqz v4, :cond_20

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    array-length v2, v4

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_20

    move/from16 v44, v2

    aget v2, v4, v3

    move-object/from16 v45, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v44

    move-object/from16 v4, v45

    goto :goto_10

    :cond_20
    move-object/from16 v45, v4

    move-object v4, v0

    if-eqz v19, :cond_21

    const/4 v0, 0x0

    goto :goto_11

    :cond_21
    move-object v0, v8

    :goto_11
    if-eqz v19, :cond_22

    const/4 v2, 0x0

    goto :goto_12

    :cond_22
    move-object v2, v10

    :goto_12
    const/4 v3, 0x1

    invoke-static {v3, v11, v0, v2, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v20

    const/4 v2, 0x0

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v3

    :try_start_18
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->printCpuCoreInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_13

    :cond_23
    move-object v3, v2

    :goto_13
    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ActivityManager"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v20, :cond_24

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/os/Process;->sendSignal(II)V

    :cond_24
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v14, :cond_25

    const-string/jumbo v21, "unknown"

    move-object/from16 v46, v2

    goto :goto_14

    :cond_25
    move-object/from16 v46, v2

    iget-object v2, v14, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object/from16 v21, v2

    :goto_14
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_27

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_26

    nop

    const/16 v22, 0x2

    goto :goto_15

    :cond_26
    nop

    const/16 v22, 0x1

    goto :goto_15

    :cond_27
    nop

    const/16 v22, 0x0

    :goto_15
    if-eqz v13, :cond_29

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v2

    if-eqz v2, :cond_28

    nop

    const/16 v42, 0x2

    goto :goto_16

    :cond_28
    nop

    const/16 v42, 0x1

    goto :goto_16

    :cond_29
    nop

    const/16 v42, 0x0

    :goto_16
    move-object/from16 v23, v46

    const/16 v2, 0x4f

    move-object/from16 v24, v3

    move-object/from16 v47, v11

    move-object/from16 v11, v41

    const/16 v25, 0x1

    move v3, v0

    move-object/from16 v27, v4

    move-object/from16 v26, v45

    move-object/from16 v4, v23

    move-wide/from16 v48, v5

    move-object/from16 v5, v21

    move-object v6, v12

    move-object/from16 v21, v7

    move/from16 v7, v22

    move-object/from16 v18, v8

    move/from16 v8, v42

    invoke-static/range {v2 .. v8}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "anr"

    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v11, :cond_2a

    iget-object v4, v11, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    move-object/from16 v22, v4

    goto :goto_17

    :cond_2a
    nop

    const/16 v22, 0x0

    :goto_17
    move-object v4, v13

    move-object v6, v14

    move-object v7, v15

    move-object v8, v12

    move-object/from16 v50, v9

    move-object/from16 v9, v24

    move-object/from16 v23, v10

    move-object/from16 v10, v20

    move-object/from16 v28, v11

    move-object/from16 v25, v47

    move-object v11, v0

    move-object v15, v12

    move-object/from16 v12, v22

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/util/ArrayList;)V

    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    if-eqz v13, :cond_2c

    :try_start_1a
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v13, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.sm.ACTION_ERROR"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v5, "com.samsung.android.lool"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "pkgName"

    iget-object v3, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "userId"

    iget v3, v13, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "type"

    if-eqz v19, :cond_2b

    const-string v3, "bg_anr"

    goto :goto_18

    :cond_2b
    const-string v3, "anr"

    :goto_18
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-string v3, "com.samsung.permission.WRITE_SM_DATA"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v38

    const/16 v39, -0x1

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    sget v43, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v44, 0x3e8

    const/16 v45, -0x1

    move-object/from16 v29, v2

    move-object/from16 v32, v0

    invoke-virtual/range {v29 .. v45}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto :goto_19

    :catchall_3
    move-exception v0

    move/from16 v6, p4

    move-wide/from16 v9, v48

    move-object/from16 v5, v50

    goto/16 :goto_23

    :cond_2c
    :goto_19
    :try_start_1b
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_30

    :try_start_1c
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, v13, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_5

    move-object/from16 v5, v50

    :try_start_1d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    move v2, v0

    if-eqz v2, :cond_2f

    if-gez v2, :cond_2e

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v3, :cond_2e

    const-string/jumbo v0, "iqi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_4

    if-eqz v0, :cond_2d

    :try_start_1e
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v13, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_1

    const/4 v4, 0x2

    :try_start_1f
    invoke-static {v0, v3, v4}, Lcom/android/server/am/AppStateBroadcasterA;->sendApplicationStop(Ljava/lang/String;II)V

    goto :goto_1b

    :catch_1
    move-exception v0

    const/4 v4, 0x2

    :goto_1a
    const/4 v3, 0x1

    goto :goto_1d

    :cond_2d
    const/4 v4, 0x2

    :goto_1b
    const-string v0, "anr"
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_2

    const/4 v3, 0x1

    :try_start_20
    invoke-virtual {v13, v0, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_1c

    :catch_2
    move-exception v0

    goto :goto_1a

    :cond_2e
    const/4 v3, 0x1

    const/4 v4, 0x2

    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_3

    :try_start_21
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    monitor-exit v6
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    :try_start_22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_3

    :goto_1c
    return-void

    :catchall_4
    move-exception v0

    :try_start_23
    monitor-exit v6
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    :try_start_24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_3

    :catch_3
    move-exception v0

    goto :goto_1d

    :cond_2f
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    goto :goto_1e

    :catch_4
    move-exception v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    goto :goto_1d

    :catch_5
    move-exception v0

    move-object/from16 v5, v50

    const/4 v3, 0x1

    const/4 v4, 0x2

    :goto_1d
    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_1e

    :cond_30
    move-object/from16 v5, v50

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    :goto_1e
    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_25
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v7, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v8, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    if-eqz v19, :cond_32

    :try_start_26
    const-string/jumbo v0, "iqi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v6, v4}, Lcom/android/server/am/AppStateBroadcasterA;->sendApplicationStop(Ljava/lang/String;II)V

    :cond_31
    const-string v0, "bg anr"

    invoke-virtual {v13, v0, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_5
    move-exception v0

    move/from16 v6, p4

    move-wide/from16 v9, v48

    goto/16 :goto_22

    :cond_32
    nop

    if-eqz v14, :cond_33

    :try_start_27
    iget-object v8, v14, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    goto :goto_1f

    :cond_33
    move-object v8, v6

    :goto_1f
    if-eqz v15, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_5

    goto :goto_20

    :cond_34
    :try_start_28
    const-string v0, "ANR"

    :goto_20
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v13, v8, v0, v3}, Lcom/android/server/am/AppErrors;->makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_8

    if-eqz v0, :cond_36

    :try_start_29
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManagerInternal;->isDock()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManagerInternal;->isVrMode()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManagerInternal;->getVrSystemUiMode()I

    move-result v0

    and-int/2addr v0, v4

    if-eqz v0, :cond_36

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_6

    if-nez v0, :cond_35

    :try_start_2a
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.hmt.vrsvc"

    const-string v7, "com.samsung.android.hmt.vrsvc.AppErrorReportActivity"

    invoke-direct {v0, v3, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v13, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_5

    :cond_35
    move-wide/from16 v9, v48

    :try_start_2b
    invoke-direct {v1, v13, v9, v10, v6}, Lcom/android/server/am/AppErrors;->createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v3, v0}, Lcom/samsung/android/vr/GearVrManagerInternal;->notifyVrAppError(Landroid/app/ApplicationErrorReport;)V

    goto :goto_21

    :catchall_6
    move-exception v0

    move-wide/from16 v9, v48

    move/from16 v6, p4

    goto :goto_22

    :cond_36
    move-wide/from16 v9, v48

    :cond_37
    :goto_21
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    new-instance v3, Lcom/android/server/am/AppNotRespondingDialog$Data;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    move/from16 v6, p4

    :try_start_2c
    invoke-direct {v3, v13, v14, v6}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_7
    move-exception v0

    move/from16 v6, p4

    goto :goto_22

    :catchall_8
    move-exception v0

    move/from16 v6, p4

    move-wide/from16 v9, v48

    :goto_22
    :try_start_2d
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_22

    :catchall_a
    move-exception v0

    move/from16 v6, p4

    move-wide/from16 v9, v48

    move-object/from16 v5, v50

    :goto_23
    :try_start_2e
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_b
    move-exception v0

    goto :goto_23

    :catchall_c
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v21, v7

    move-object/from16 v18, v8

    move-object/from16 v23, v10

    move-object/from16 v25, v11

    move-object v15, v12

    move-object/from16 v28, v41

    move-object/from16 v26, v45

    move-wide/from16 v51, v5

    move/from16 v6, p4

    move-object v5, v9

    move-wide/from16 v9, v51

    :goto_24
    :try_start_2f
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_d

    throw v0

    :catchall_d
    move-exception v0

    goto :goto_24

    :catchall_e
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v25, v11

    move-object v15, v12

    move-object/from16 v28, v41

    move-wide v9, v5

    move/from16 v6, p4

    goto :goto_25

    :catchall_f
    move-exception v0

    move-object/from16 v28, v3

    move-object/from16 v23, v10

    move-object/from16 v25, v11

    move-object v15, v12

    move-wide v9, v5

    move/from16 v6, p4

    :goto_25
    :try_start_30
    monitor-exit v8
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_10
    move-exception v0

    goto :goto_25
.end method

.method clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    return-void
.end method

.method crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .locals 58

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-object v10, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    iget-object v0, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    iget-object v9, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v10, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v10, :cond_1

    move-object v0, v10

    :cond_1
    :goto_0
    move-object/from16 v16, v0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TMO_DEVICE_REPORTING:Z

    const/4 v7, 0x3

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v12, :cond_2

    const/16 v0, 0x22b

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-direct {v11, v0, v1, v2, v7}, Lcom/android/server/am/AppErrors;->sendAppStateMsg(ILjava/lang/String;II)V

    :cond_2
    const/4 v8, 0x0

    if-nez v12, :cond_3

    move/from16 v23, v8

    goto :goto_1

    :cond_3
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v23, v0

    :goto_1
    if-nez v12, :cond_5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    move/from16 v6, p3

    if-ne v0, v6, :cond_4

    const-string/jumbo v0, "system_server"

    :goto_2
    goto :goto_3

    :cond_4
    const-string/jumbo v0, "unknown"

    goto :goto_2

    :cond_5
    move/from16 v6, p3

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_3
    move-object v5, v0

    const/16 v17, 0x3

    const/16 v18, 0x5

    const/16 v19, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v20

    const-string v21, "AppErrors"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "crashed due to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v17 .. v23}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v27, "crash"

    iget-object v1, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    iget-object v2, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v24, v0

    move-object/from16 v25, v5

    move/from16 v26, v23

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    invoke-virtual/range {v24 .. v31}, Lcom/android/server/am/ActivityManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    if-eqz v12, :cond_6

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget v1, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0, v1}, Lcom/android/server/RescueParty;->notePersistentAppCrash(Landroid/content/Context;I)V

    :cond_6
    new-instance v0, Lcom/android/server/am/AppErrorResult;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorResult;-><init>()V

    move-object v4, v0

    iget-object v3, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    const-string v1, "Native crash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v0, :cond_a

    const/4 v0, 0x0

    if-eqz v12, :cond_7

    :try_start_1
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, v1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object v1, v13

    goto/16 :goto_11

    :cond_7
    :goto_4
    const-string/jumbo v1, "unknown"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    if-nez v12, :cond_8

    const-string/jumbo v1, "sys_error"

    goto :goto_5

    :cond_8
    const-string v1, "app_error"

    :goto_5
    invoke-static {v1, v0}, Landroid/os/Debug;->saveDump(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    const-string v1, "app_error"

    invoke-static {v1, v0}, Landroid/os/Debug;->saveDump(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    :goto_6
    move-object v1, v11

    move-object v2, v12

    move-object/from16 v17, v3

    move-object v3, v13

    move-object v13, v4

    move-object v4, v10

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object v6, v9

    move-wide v7, v14

    move-object/from16 v19, v9

    move/from16 v9, p3

    move-object/from16 v20, v10

    move/from16 v10, p4

    :try_start_2
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v0, :cond_b

    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1
    move-exception v0

    move-object v3, v13

    move-object/from16 v1, p2

    goto/16 :goto_11

    :cond_b
    if-eqz v12, :cond_c

    :try_start_4
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->instr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v0, :cond_c

    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_c
    if-eqz v12, :cond_d

    :try_start_5
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V

    :cond_d
    if-eqz v12, :cond_e

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crash : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sm.ACTION_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v3, "com.samsung.android.lool"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pkgName"

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "userId"

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    const-string v2, "crash"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-string v2, "com.samsung.permission.WRITE_SM_DATA"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v49

    const/16 v50, -0x1

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    sget v54, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v55, 0x3e8

    const/16 v56, -0x1

    move-object/from16 v40, v1

    move-object/from16 v43, v0

    invoke-virtual/range {v40 .. v56}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_e
    :try_start_6
    new-instance v0, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V

    iput-object v13, v0, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    iput-object v12, v0, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_1f

    move-object v1, v11

    move-object v2, v12

    move-object/from16 v3, v20

    move-object/from16 v4, v16

    move-object/from16 v5, v19

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_f

    move-object v3, v13

    move-object/from16 v1, p2

    goto/16 :goto_10

    :cond_f
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    const/4 v2, 0x2

    if-eqz v1, :cond_11

    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v1}, Lcom/samsung/android/vr/GearVrManagerInternal;->isDock()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v1}, Lcom/samsung/android/vr/GearVrManagerInternal;->isVrMode()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v1}, Lcom/samsung/android/vr/GearVrManagerInternal;->getVrSystemUiMode()I

    move-result v1

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-nez v1, :cond_10

    :try_start_7
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.hmt.vrsvc"

    const-string v4, "com.samsung.android.hmt.vrsvc.AppErrorReportActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v12, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_10
    move-object v3, v13

    move-object/from16 v1, p2

    :try_start_8
    invoke-direct {v11, v12, v14, v15, v1}, Lcom/android/server/am/AppErrors;->createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v4

    if-eqz v4, :cond_12

    iget-object v5, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v5, v4}, Lcom/samsung/android/vr/GearVrManagerInternal;->notifyVrAppError(Landroid/app/ApplicationErrorReport;)V

    goto :goto_7

    :cond_11
    move-object v3, v13

    move-object/from16 v1, p2

    :cond_12
    :goto_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    const/4 v5, 0x1

    iput v5, v4, Landroid/os/Message;->what:I

    iget-object v6, v0, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v7, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v3}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v0

    const/4 v4, 0x0

    iget-object v7, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v8, 0x13c

    invoke-static {v7, v8, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    const/4 v7, 0x6

    if-eq v0, v7, :cond_14

    const/4 v7, 0x7

    if-ne v0, v7, :cond_13

    goto :goto_9

    :cond_13
    :goto_8
    move v7, v0

    goto :goto_a

    :cond_14
    :goto_9
    const/4 v0, 0x1

    goto :goto_8

    :goto_a
    const-string/jumbo v0, "iqi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v9, 0x3

    invoke-static {v0, v8, v9}, Lcom/android/server/am/AppStateBroadcasterA;->sendApplicationStop(Ljava/lang/String;II)V

    goto :goto_b

    :cond_15
    const/4 v9, 0x3

    :goto_b
    iget-object v8, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x5

    if-ne v7, v0, :cond_16

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_16
    if-ne v7, v9, :cond_18

    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v10, "crash"

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13, v5, v10}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v6, :cond_18

    :try_start_a
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v10, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v0, v10, v9}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_d

    :catch_0
    move-exception v0

    :try_start_b
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v9, :cond_17

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    goto :goto_c

    :cond_17
    const/4 v9, 0x0

    :goto_c
    if-eqz v9, :cond_18

    const-string v10, "android.intent.category.LAUNCHER"

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    iget-object v10, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v24

    iget v10, v6, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iget-object v2, v6, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    iget-object v13, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    new-instance v5, Lcom/android/server/am/SafeActivityOptions;

    move-object/from16 v57, v0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/server/am/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    iget v0, v6, Lcom/android/server/am/TaskRecord;->userId:I

    const/16 v37, 0x0

    const-string v38, "AppErrors"

    const/16 v39, 0x0

    move/from16 v25, v10

    move/from16 v26, p3

    move/from16 v27, p4

    move-object/from16 v28, v2

    move-object/from16 v29, v13

    move-object/from16 v35, v5

    move/from16 v36, v0

    invoke-virtual/range {v24 .. v39}, Lcom/android/server/am/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    :cond_18
    :goto_d
    const/4 v2, 0x1

    if-ne v7, v2, :cond_1a

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_19

    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "crash"

    const/4 v5, 0x0

    invoke-virtual {v0, v12, v5, v5, v2}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_19
    :try_start_d
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e

    :catchall_2
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_1a
    :goto_e
    const/16 v0, 0x8

    if-ne v7, v0, :cond_1b

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1b
    const/4 v2, 0x2

    if-ne v7, v2, :cond_1c

    invoke-virtual {v11, v12, v14, v15, v1}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v0

    move-object v4, v0

    :cond_1c
    if-eqz v12, :cond_1d

    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_1d

    const/4 v2, 0x3

    if-eq v7, v2, :cond_1d

    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v2, v5, v9}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v4, :cond_1e

    :try_start_e
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    const-string v2, "ActivityManager"

    const-string v5, "bug report receiver dissappeared"

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    :goto_f
    return-void

    :catchall_3
    move-exception v0

    :try_start_f
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_1f
    move-object v3, v13

    move-object/from16 v1, p2

    :goto_10
    :try_start_10
    monitor-exit v17
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4
    move-exception v0

    move-object v3, v13

    move-object/from16 v1, p2

    goto :goto_11

    :catchall_5
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object v1, v13

    :goto_11
    :try_start_11
    monitor-exit v17
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_11
.end method

.method createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v1
.end method

.method dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    move/from16 v10, p3

    move v9, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_7

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    move v14, v9

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v13, :cond_5

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1

    if-eqz v4, :cond_0

    move-object/from16 v16, v7

    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_0
    move-object/from16 v16, v7

    :goto_2
    move/from16 v19, v8

    goto :goto_3

    :cond_1
    move-object/from16 v16, v7

    :cond_2
    if-nez v14, :cond_4

    if-eqz v10, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_3
    const/4 v10, 0x1

    const-string v7, "  Time since processes crashed:"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x1

    move v14, v7

    :cond_4
    const-string v7, "    Process "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " uid "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": last crashed "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move/from16 v19, v8

    sub-long v7, v5, v17

    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v7, " ago"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v16

    move/from16 v8, v19

    goto :goto_1

    :cond_5
    move-object/from16 v16, v7

    move/from16 v19, v8

    add-int/lit8 v3, v3, 0x1

    move v9, v14

    goto/16 :goto_0

    :cond_6
    move/from16 v10, p3

    :cond_7
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v3

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_12

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    move v11, v6

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v9, :cond_11

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v7, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_9

    if-eqz v13, :cond_8

    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    nop

    :cond_8
    move-object/from16 v20, v4

    move/from16 v21, v5

    goto/16 :goto_7

    :cond_9
    if-nez v11, :cond_b

    if-eqz v10, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_a
    const/4 v10, 0x1

    const-string v14, "  Bad processes:"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x1

    :cond_b
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/AppErrors$BadProcessInfo;

    const-string v15, "    Bad process "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, " uid "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, ": crashed at time "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v20, v4

    move/from16 v21, v5

    iget-wide v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    if-eqz v4, :cond_c

    const-string v4, "      Short msg: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    if-eqz v4, :cond_d

    const-string v4, "      Long msg: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    if-eqz v4, :cond_10

    const-string v4, "      Stack:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    move v5, v4

    const/4 v4, 0x0

    :goto_6
    iget-object v15, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v4, v15, :cond_f

    iget-object v15, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v0, 0xa

    if-ne v15, v0, :cond_e

    const-string v0, "        "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    sub-int v15, v4, v5

    invoke-virtual {v1, v0, v5, v15}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v4, 0x1

    move v5, v0

    :cond_e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    :cond_f
    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v5, v0, :cond_10

    const-string v0, "        "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_10
    :goto_7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v0, p0

    goto/16 :goto_5

    :cond_11
    move-object/from16 v20, v4

    move/from16 v21, v5

    add-int/lit8 v3, v3, 0x1

    move v6, v11

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_12
    return v10
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "anr_show_background"

    const/4 v12, 0x0

    invoke-static {v0, v4, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    move v0, v13

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    move v14, v0

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    move v0, v13

    goto :goto_1

    :cond_1
    move v0, v12

    :goto_1
    move v15, v0

    const/4 v0, 0x0

    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v4, :cond_2

    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    :goto_2
    move-object v9, v5

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    move-object v5, v4

    goto :goto_2

    :goto_3
    move-object v8, v4

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v13

    move v7, v0

    :goto_4
    move v0, v4

    const-wide/32 v4, 0xea60

    if-ltz v0, :cond_6

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    iget-wide v12, v6, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v12, v4

    cmp-long v4, v10, v12

    if-lez v4, :cond_3

    const/4 v4, 0x1

    iput v4, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    goto :goto_5

    :cond_3
    const/4 v4, 0x1

    iget v5, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    add-int/2addr v5, v4

    iput v5, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    :goto_5
    iget v4, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v4, v4

    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v12, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v4, v4, v12

    if-gez v4, :cond_5

    iget-boolean v4, v6, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v4, :cond_4

    if-eqz v15, :cond_5

    :cond_4
    const/4 v4, 0x1

    move v7, v4

    :cond_5
    add-int/lit8 v4, v0, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_4

    :cond_6
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long/2addr v12, v4

    cmp-long v0, v10, v12

    if-gez v0, :cond_b

    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has crashed too many times: killing!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x7550

    const/4 v12, 0x3

    new-array v4, v12, [Ljava/lang/Object;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_9

    const/16 v0, 0x753f

    new-array v4, v12, [Ljava/lang/Object;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v13, 0x0

    aput-object v5, v4, v13

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v13, 0x1

    aput-object v5, v4, v13

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v6, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object v4, v6

    move v12, v5

    move/from16 v16, v15

    move-object v15, v6

    move-wide v5, v10

    move-wide/from16 v17, v10

    move v10, v7

    move-object/from16 v7, p3

    move-object v11, v8

    move-object/from16 v8, p4

    move-object/from16 v19, v11

    move-object v11, v9

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13, v12, v15}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_6

    :cond_7
    move-object/from16 v19, v8

    move-wide/from16 v17, v10

    move/from16 v16, v15

    move v10, v7

    move-object v11, v9

    :goto_6
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->bad:Z

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->removed:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TMO_DEVICE_REPORTING:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x22b

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v6, 0x3

    invoke-direct {v1, v0, v4, v5, v6}, Lcom/android/server/am/AppErrors;->sendAppStateMsg(ILjava/lang/String;II)V

    :cond_8
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "crash"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v10, v4}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    if-nez v14, :cond_a

    return v5

    :cond_9
    move-object/from16 v19, v8

    move-wide/from16 v17, v10

    move/from16 v16, v15

    move v10, v7

    move-object v11, v9

    :cond_a
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    move-object/from16 v6, p2

    goto :goto_7

    :cond_b
    move-object/from16 v19, v8

    move-wide/from16 v17, v10

    move/from16 v16, v15

    move v10, v7

    move-object v11, v9

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v6, p2

    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->finishTopCrashedActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v3, :cond_c

    iput-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    :cond_c
    if-eqz v3, :cond_d

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, v4

    cmp-long v4, v17, v7

    if-gez v4, :cond_d

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v4, 0x1

    :goto_8
    if-eqz v3, :cond_e

    if-eqz v10, :cond_e

    iput-boolean v4, v3, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    :cond_e
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne v2, v0, :cond_10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v0, v5

    if-nez v0, :cond_10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    :goto_9
    move v5, v0

    if-ltz v5, :cond_10

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Clearing package preferred activities from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v0, v8}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    :cond_f
    :goto_a
    add-int/lit8 v0, v5, -0x1

    goto :goto_9

    :cond_10
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_11

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    move-wide/from16 v8, v17

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v5, v7, v12}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v5, v7, v12}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_11
    move-wide/from16 v8, v17

    :goto_b
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    const/4 v5, 0x1

    return v5
.end method

.method handleShowAnrUi(Landroid/os/Message;)V
    .locals 27

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v4, p1

    :try_start_1
    iget-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AppNotRespondingDialog$Data;

    iget-object v5, v0, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    if-nez v5, :cond_0

    const-string v6, "ActivityManager"

    const-string/jumbo v7, "handleShowAnrUi: proc is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_2
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    const/16 v7, 0x13d

    if-eqz v6, :cond_1

    const-string v6, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has anr dialog: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_3
    const-string v6, "app_anr"

    const/4 v8, 0x0

    if-nez v5, :cond_2

    move-object v9, v8

    goto :goto_0

    :cond_2
    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    invoke-static {v6, v9}, Landroid/os/Debug;->saveDump(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.ANR"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v9, :cond_3

    const/high16 v9, 0x50000000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    sget v24, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v25, 0x3e8

    const/16 v26, 0x0

    move-object v13, v6

    invoke-virtual/range {v10 .. v26}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "anr_show_background"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_4

    const/4 v11, 0x1

    nop

    :cond_4
    move v9, v11

    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v10

    if-nez v10, :cond_6

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_5
    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v11, -0x1

    invoke-static {v10, v7, v11}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v5, v8}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    goto :goto_2

    :cond_6
    :goto_1
    new-instance v7, Lcom/android/server/am/AppNotRespondingDialog;

    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v10, v0}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    move-object v2, v7

    iput-object v2, v5, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    :goto_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/server/am/AppErrors$3;

    invoke-direct {v0, v1}, Lcom/android/server/am/AppErrors$3;-><init>(Lcom/android/server/am/AppErrors;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v0, Lcom/android/server/am/AppErrors$4;

    invoke-direct {v0, v1}, Lcom/android/server/am/AppErrors$4;-><init>(Lcom/android/server/am/AppErrors;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_7
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v4, p1

    :goto_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method handleShowAppErrorUi(Landroid/os/Message;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/AppErrorDialog$Data;

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "anr_show_background"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    move v6, v0

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    if-nez v0, :cond_1

    const-string v4, "ActivityManager"

    const-string/jumbo v5, "handleShowAppErrorUi: proc is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_1
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v12, :cond_3

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "App already has crash dialog: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_2

    sget v4, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v9, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_3
    :try_start_2
    iget v12, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    const/16 v13, 0x2710

    if-lt v12, v13, :cond_4

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v12, v13, :cond_4

    const/4 v12, 0x1

    goto :goto_1

    :cond_4
    move v12, v5

    :goto_1
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v13}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v13

    array-length v14, v13

    move v15, v12

    move v12, v5

    :goto_2
    if-ge v12, v14, :cond_6

    aget v16, v13, v12

    move/from16 v17, v16

    move/from16 v4, v17

    if-eq v11, v4, :cond_5

    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    move/from16 v16, v5

    :goto_3
    and-int v15, v15, v16

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    if-eqz v15, :cond_8

    if-nez v6, :cond_8

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping crash dialog of "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": background"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_7

    sget v4, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v9, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_7
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_8
    :try_start_3
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v12, "show_first_crash_dialog"

    invoke-static {v4, v12, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    move v4, v5

    :goto_4
    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "show_first_crash_dialog_dev_option"

    iget-object v14, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v14}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v14

    invoke-static {v12, v13, v5, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    goto :goto_5

    :cond_a
    move v12, v5

    :goto_5
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-eqz v13, :cond_b

    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v18, 0x1

    goto :goto_6

    :cond_b
    move/from16 v18, v5

    :goto_6
    move/from16 v5, v18

    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v13

    if-nez v13, :cond_c

    if-eqz v6, :cond_e

    :cond_c
    if-nez v5, :cond_e

    if-nez v4, :cond_d

    if-nez v12, :cond_d

    iget-boolean v13, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v13, :cond_e

    :cond_d
    new-instance v13, Lcom/android/server/am/AppErrorDialog;

    iget-object v14, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v13, v14, v2, v3}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    move-object v7, v13

    iput-object v13, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    goto :goto_7

    :cond_e
    if-eqz v9, :cond_f

    sget v2, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v9, v2}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_f
    :goto_7
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object v0, v10

    move v2, v11

    if-eqz v7, :cond_11

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Showing crash dialog for package "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " u"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    new-instance v4, Lcom/android/server/am/AppErrors$1;

    invoke-direct {v4, v1}, Lcom/android/server/am/AppErrors$1;-><init>(Lcom/android/server/am/AppErrors;)V

    invoke-virtual {v7, v4}, Lcom/android/server/am/AppErrorDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v4, Lcom/android/server/am/AppErrors$2;

    invoke-direct {v4, v1}, Lcom/android/server/am/AppErrors$2;-><init>(Lcom/android/server/am/AppErrors;)V

    invoke-virtual {v7, v4}, Lcom/android/server/am/AppErrorDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_10
    invoke-virtual {v7}, Lcom/android/server/am/AppErrorDialog;->show()V

    :cond_11
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_0

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_1

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_3

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_3

    const-string/jumbo v4, "user-terminated"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    const-string/jumbo v0, "iqi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppStateBroadcasterA;->sendApplicationStop(Ljava/lang/String;II)V

    :cond_2
    const-string/jumbo v0, "user request after error"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method loadAppsNotReportingCrashesFromConfigLocked(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    return-void
.end method

.method resetProcessCrashTimeLocked(ZII)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_6

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    if-nez p1, :cond_1

    const/4 v6, -0x1

    if-ne p3, v6, :cond_0

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-ne v6, p2, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    if-ne v5, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p3, :cond_2

    const/4 v4, 0x1

    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-ltz p1, :cond_0

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_0

    goto :goto_1

    :cond_0
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, p2, :cond_1

    move-object v0, v3

    goto :goto_2

    :cond_1
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ltz p4, :cond_2

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p4, :cond_3

    :cond_2
    move-object v0, v3

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crashApplication: nothing for uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " initialPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-virtual {v0, p5}, Lcom/android/server/am/ProcessRecord;->scheduleCrash(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4, v5, v6}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide v7, 0x10300000001L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    const/16 v16, 0x0

    if-nez v7, :cond_5

    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    move/from16 v9, v16

    :goto_0
    if-ge v9, v8, :cond_5

    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    move-wide/from16 v18, v5

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move/from16 v6, v16

    :goto_1
    if-ge v6, v5, :cond_4

    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v14, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    if-eqz v13, :cond_1

    move/from16 v20, v5

    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    nop

    move-wide/from16 v25, v3

    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v14

    goto :goto_2

    :cond_1
    move/from16 v20, v5

    move-wide/from16 v25, v3

    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v14

    goto :goto_2

    :cond_2
    move/from16 v20, v5

    :cond_3
    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v24, v13

    move-object/from16 v23, v14

    const-wide v7, 0x20b00000002L

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    const-wide v7, 0x10500000001L

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-wide/from16 v25, v3

    const-wide v3, 0x10300000002L

    invoke-virtual {v1, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v14, v23

    move-wide/from16 v3, v25

    const-wide v12, 0x10900000001L

    goto :goto_1

    :cond_4
    move-wide/from16 v25, v3

    move/from16 v20, v5

    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v14

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v5, v18

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    goto/16 :goto_0

    :cond_5
    move-wide/from16 v25, v3

    move-wide/from16 v18, v5

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v5, v16

    :goto_3
    if-ge v5, v4, :cond_9

    const-wide v6, 0x20b00000003L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    const-wide v11, 0x10900000001L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move/from16 v13, v16

    :goto_4
    if-ge v13, v10, :cond_8

    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    iget-object v15, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v15, v8, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_7

    if-eqz v15, :cond_6

    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    nop

    :cond_6
    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const-wide v14, 0x10300000002L

    goto :goto_5

    :cond_7
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const-wide v2, 0x20b00000002L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const-wide v2, 0x10500000001L

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v2, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move/from16 v30, v14

    move-object/from16 v31, v15

    const-wide v14, 0x10300000002L

    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10900000003L

    iget-object v12, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10900000004L

    iget-object v12, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10900000005L

    iget-object v12, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    move-object/from16 v2, p4

    const-wide v11, 0x10900000001L

    goto/16 :goto_4

    :cond_8
    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const-wide v14, 0x10300000002L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p4

    goto/16 :goto_3

    :cond_9
    move-wide/from16 v2, v25

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
