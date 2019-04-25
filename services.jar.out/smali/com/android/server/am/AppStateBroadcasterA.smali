.class Lcom/android/server/am/AppStateBroadcasterA;
.super Ljava/lang/Object;
.source "AppStateBroadcasterA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppStateBroadcasterA$HandlerCallback;,
        Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;
    }
.end annotation


# static fields
.field private static final ACTION_APPLICATION_STATE:Ljava/lang/String; = "com.att.iqi.action.APPLICATION_STATE"

.field private static final APP_STATE_EXITED:Ljava/lang/String; = "EXITED"

.field private static final APP_STATE_FOCUS_GAIN:Ljava/lang/String; = "FOCUS_GAIN"

.field private static final APP_STATE_FOCUS_LOSS:Ljava/lang/String; = "FOCUS_LOSS"

.field private static final APP_STATE_PID_EXITED:Ljava/lang/String; = "PID_EXITED"

.field private static final APP_STATE_PID_STARTED:Ljava/lang/String; = "PID_STARTED"

.field private static final APP_STATE_START:Ljava/lang/String; = "START"

.field static final APP_TERM_REASONS:[Ljava/lang/String;

.field private static final APP_TERM_REASON_ANR:Ljava/lang/String; = "ANR"

.field private static final APP_TERM_REASON_CRASH:Ljava/lang/String; = "CRASH"

.field private static final APP_TERM_REASON_SYSTEM_HALT:Ljava/lang/String; = "NORMAL_SYSTEM_HALT"

.field private static final APP_TERM_REASON_USER_HALT:Ljava/lang/String; = "USER_HALTED"

.field private static final EXTRA_APP_PACKAGE_NAME:Ljava/lang/String; = "ApplicationPackageName"

.field private static final EXTRA_APP_STATE:Ljava/lang/String; = "ApplicationState"

.field private static final EXTRA_APP_TERM_REASON:Ljava/lang/String; = "ApplicationTermReason"

.field private static final EXTRA_INSTANCE_ID:Ljava/lang/String; = "AppInstance"

.field private static final EXTRA_PROCESS_ID:Ljava/lang/String; = "PID"

.field private static final IQI_DEBUG_ACTION:Ljava/lang/String; = "com.att.iqi.action.ENABLE_IQI_DEBUG_LOG"

.field private static final IQI_DEBUG_EXTRA:Ljava/lang/String; = "com.att.iqi.extra.IQI_DEBUG"

.field private static final IQI_DEBUG_FILE:Ljava/lang/String; = "logify"

.field private static final IQI_DEBUG_FILE_PATH:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "IQAgent"

.field private static final PERMISSION_RECEIVE_APPLICATION_STATE:Ljava/lang/String; = "com.att.iqi.permission.RECEIVE_APP_STATE"

.field private static final RECEIVE_APP_STATE_BROADCASTER_STATE:Ljava/lang/String; = "com.att.iqi.permission.RECEIVE_APP_STATE_BROADCASTER_STATE"

.field public static final STOP_REASON_ANR:I = 0x2

.field public static final STOP_REASON_CRASH:I = 0x3

.field public static final STOP_REASON_NORMAL_SYSTEM_HALT:I = 0x0

.field public static final STOP_REASON_USER_HALT:I = 0x1

.field private static final mAgentReadyReceiver:Landroid/content/BroadcastReceiver;

.field private static final mDebugReceiver:Landroid/content/BroadcastReceiver;

.field private static sAM:Lcom/android/server/am/ActivityManagerService;

.field private static volatile sBroadcastEnabled:Z

.field private static sContext:Landroid/content/Context;

.field private static sDebugLog:Z

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static final sKnownRunningPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastFocusAppName:Ljava/lang/String;

.field private static sLastInstanceID:I

.field private static sUsedInstanceIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/system"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/AppStateBroadcasterA;->IQI_DEBUG_FILE_PATH:Ljava/lang/String;

    sput-boolean v0, Lcom/android/server/am/AppStateBroadcasterA;->sBroadcastEnabled:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sLastFocusAppName:Ljava/lang/String;

    sput v0, Lcom/android/server/am/AppStateBroadcasterA;->sLastInstanceID:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sUsedInstanceIDs:Ljava/util/Set;

    const-string v0, "NORMAL_SYSTEM_HALT"

    const-string v1, "USER_HALTED"

    const-string v2, "ANR"

    const-string v3, "CRASH"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppStateBroadcasterA;->APP_TERM_REASONS:[Ljava/lang/String;

    new-instance v0, Lcom/android/server/am/AppStateBroadcasterA$1;

    invoke-direct {v0}, Lcom/android/server/am/AppStateBroadcasterA$1;-><init>()V

    sput-object v0, Lcom/android/server/am/AppStateBroadcasterA;->mAgentReadyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/AppStateBroadcasterA$2;

    invoke-direct {v0}, Lcom/android/server/am/AppStateBroadcasterA$2;-><init>()V

    sput-object v0, Lcom/android/server/am/AppStateBroadcasterA;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sKnownRunningPackages:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->nextApplicationInstanceID()I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sLastFocusAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/AppStateBroadcasterA;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/server/am/AppStateBroadcasterA;->sLastFocusAppName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Ljava/lang/String;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppStateBroadcasterA;->packageStopped(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->enableIntentBroadcast()V

    return-void
.end method

.method static synthetic access$1500()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->disableIntentBroadcast()V

    return-void
.end method

.method static synthetic access$200()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sAM:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/AppStateBroadcasterA;->sBroadcastEnabled:Z

    return p0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/AppStateBroadcasterA;->populateRunningProcesses(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$600()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sKnownRunningPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/AppStateBroadcasterA;->packageRunning(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->isKnownRunning(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    return p0
.end method

.method private static broadcastAppExit(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.att.iqi.action.APPLICATION_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ApplicationPackageName"

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ApplicationState"

    const-string v2, "EXITED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ApplicationTermReason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const-string v3, "com.att.iqi.permission.RECEIVE_APP_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v1, :cond_0

    const-string v1, "IQAgent"

    invoke-static {v0}, Lcom/android/server/am/AppStateBroadcasterA;->toStringExit(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static broadcastAppStart(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "EXITED"

    if-eq p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.att.iqi.action.APPLICATION_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ApplicationPackageName"

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ApplicationState"

    const-string v2, "START"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "AppInstance"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const-string v3, "com.att.iqi.permission.RECEIVE_APP_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v1, :cond_0

    const-string v1, "IQAgent"

    invoke-static {v0}, Lcom/android/server/am/AppStateBroadcasterA;->toStringState(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static broadcastAppState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "EXITED"

    if-eq p1, v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.att.iqi.action.APPLICATION_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ApplicationPackageName"

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ApplicationState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;

    if-eqz v1, :cond_0

    const-string v2, "AppInstance"

    invoke-virtual {v1}, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->getRunAppId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const-string v4, "com.att.iqi.permission.RECEIVE_APP_STATE"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v2, :cond_1

    const-string v2, "IQAgent"

    invoke-static {v0}, Lcom/android/server/am/AppStateBroadcasterA;->toStringState(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static broadcastPidExit(Ljava/lang/String;I)V
    .locals 4

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.att.iqi.action.APPLICATION_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ApplicationPackageName"

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ApplicationState"

    const-string v2, "PID_EXITED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const-string v3, "com.att.iqi.permission.RECEIVE_APP_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v1, :cond_0

    const-string v1, "IQAgent"

    invoke-static {v0}, Lcom/android/server/am/AppStateBroadcasterA;->toStringExit(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static broadcastPidStart(Ljava/lang/String;II)V
    .locals 4

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.att.iqi.action.APPLICATION_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ApplicationPackageName"

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ApplicationState"

    const-string v2, "PID_STARTED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "AppInstance"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const-string v3, "com.att.iqi.permission.RECEIVE_APP_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v1, :cond_0

    const-string v1, "IQAgent"

    invoke-static {v0}, Lcom/android/server/am/AppStateBroadcasterA;->toStringState(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static disableIntentBroadcast()V
    .locals 2

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static enableIntentBroadcast()V
    .locals 2

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static isKnownRunning(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static nextApplicationInstanceID()I
    .locals 4

    sget v0, Lcom/android/server/am/AppStateBroadcasterA;->sLastInstanceID:I

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sput v0, Lcom/android/server/am/AppStateBroadcasterA;->sLastInstanceID:I

    :cond_0
    sget v0, Lcom/android/server/am/AppStateBroadcasterA;->sLastInstanceID:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/am/AppStateBroadcasterA;->sLastInstanceID:I

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_1

    sget v0, Lcom/android/server/am/AppStateBroadcasterA;->sLastInstanceID:I

    if-ge v0, v1, :cond_2

    :cond_1
    sput v1, Lcom/android/server/am/AppStateBroadcasterA;->sLastInstanceID:I

    :cond_2
    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sUsedInstanceIDs:Ljava/util/Set;

    sget v1, Lcom/android/server/am/AppStateBroadcasterA;->sLastInstanceID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/am/AppStateBroadcasterA;->sLastInstanceID:I

    return v0
.end method

.method public static onSystemDown()V
    .locals 1

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method

.method public static onSystemReady(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 5

    sput-object p0, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    sput-object p1, Lcom/android/server/am/AppStateBroadcasterA;->sAM:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "asb"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/AppStateBroadcasterA$HandlerCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/am/AppStateBroadcasterA$HandlerCallback;-><init>(Lcom/android/server/am/AppStateBroadcasterA$1;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sHandler:Landroid/os/Handler;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.att.iqi.action.BROADCASTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->mAgentReadyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Lcom/android/server/am/AppStateBroadcasterA;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.att.iqi.action.ENABLE_IQI_DEBUG_LOG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/AppStateBroadcasterA;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->verifyDebugLogsState()V

    return-void
.end method

.method private static packageRunning(Ljava/lang/String;I)V
    .locals 5

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v1, :cond_0

    const-string v1, "IQAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageRunning for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with processId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;

    if-nez v1, :cond_1

    new-instance v2, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;

    invoke-direct {v2}, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;-><init>()V

    move-object v1, v2

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "START"

    invoke-virtual {v1}, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->getRunAppId()I

    move-result v3

    invoke-static {p0, v2, p1, v3}, Lcom/android/server/am/AppStateBroadcasterA;->broadcastAppStart(Ljava/lang/String;Ljava/lang/String;II)V

    sget-boolean v2, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v2, :cond_2

    const-string v2, "IQAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageRunning sent APP_STATE_START for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->getRunAppId()I

    move-result v2

    invoke-static {p0, p1, v2}, Lcom/android/server/am/AppStateBroadcasterA;->broadcastPidStart(Ljava/lang/String;II)V

    sget-boolean v2, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v2, :cond_2

    const-string v2, "IQAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reported PID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " started for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->addProcess(I)V

    return-void
.end method

.method private static packageStopped(Ljava/lang/String;II)V
    .locals 5

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v1, :cond_0

    const-string v1, "IQAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "packageStopped for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with processId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " stopReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;

    if-eqz v1, :cond_6

    sget-boolean v2, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v2, :cond_1

    const-string v2, "IQAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from rootPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->removeProcess(II)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v2, :cond_2

    const-string v2, "IQAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from running packages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sLastFocusAppName:Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sLastFocusAppName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->sendApplicationFocusLoss(Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sLastFocusAppName:Ljava/lang/String;

    :cond_3
    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->getTermReason()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/android/server/am/AppStateBroadcasterA;->broadcastAppExit(Ljava/lang/String;Ljava/lang/String;I)V

    sget-boolean v2, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v2, :cond_6

    const-string v2, "IQAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendApplicationStop APP_STATE_EXITED for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->shouldNotify()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0, p1}, Lcom/android/server/am/AppStateBroadcasterA;->broadcastPidExit(Ljava/lang/String;I)V

    sget-boolean v2, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v2, :cond_6

    const-string v2, "IQAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reported PID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " exited for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    sget-boolean v2, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v2, :cond_6

    const-string v2, "IQAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(pid= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") Did not broadcast due to dup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method

.method private static populateRunningProcesses(Landroid/content/Context;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/am/AppStateBroadcasterA;->sendApplicationStart(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public static sendApplicationFocusGain(Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "IQAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendApplicationFocusGain("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") called from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcasterA;->sBroadcastEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->shouldReportApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "package_name"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private static sendApplicationFocusLoss(Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "IQAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendApplicationFocusLoss("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") called from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcasterA;->sBroadcastEnabled:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->shouldReportApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->isKnownRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "FOCUS_LOSS"

    invoke-static {p0, v0}, Lcom/android/server/am/AppStateBroadcasterA;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sLastFocusAppName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sLastFocusAppName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v0, :cond_2

    const-string v0, "IQAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendApplicationFocusLoss - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not match last focus package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sLastFocusAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v0, :cond_3

    const-string v0, "IQAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendApplicationFocusLoss sent APP_STATE_FOCUS_LOSS for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static sendApplicationStart(Ljava/lang/String;I)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "IQAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendApplicationStart("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") called from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcasterA;->sBroadcastEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->shouldReportApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "package_name"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public static sendApplicationStop(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/AppStateBroadcasterA;->sendApplicationStop(Ljava/lang/String;II)V

    return-void
.end method

.method public static sendApplicationStop(Ljava/lang/String;II)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "IQAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendApplicationStop("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") called from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcasterA;->sBroadcastEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->shouldReportApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->APP_TERM_REASONS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_1

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "package_name"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "stop_reason"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public static setStopReason(Ljava/lang/String;I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/AppStateBroadcasterA;->sBroadcastEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->shouldReportApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->APP_TERM_REASONS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "package_name"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "stop_reason"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private static shouldReportApp(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static stripPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static toStringExit(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ApplicationPackageName"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ApplicationState"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", termReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ApplicationTermReason"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toStringState(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ApplicationPackageName"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ApplicationState"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static verifyDebugLogsState()V
    .locals 5

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->IQI_DEBUG_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v2, "logify"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v1, v2

    invoke-virtual {v1}, Ljava/io/FileReader;->read()I

    move-result v2

    int-to-char v2, v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sput-boolean v3, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_2
    sget-boolean v3, Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z

    if-eqz v3, :cond_1

    const-string v3, "IQAgent"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v3

    :cond_3
    :goto_4
    throw v2
.end method
