.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;
.super Ljava/lang/Object;
.source "DLCBinder.java"


# static fields
.field private static DLC_LOG_CLASS:Ljava/lang/String;

.field private static DLC_LOG_PACKAGE:Ljava/lang/String;


# instance fields
.field private callback:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

.field private context:Landroid/content/Context;

.field private dlcRegisterReplyReceiver:Landroid/content/BroadcastReceiver;

.field private dlcService:Lcom/sec/spp/push/dlc/api/IDlcService;

.field private dlcServiceConnection:Landroid/content/ServiceConnection;

.field private isBindToDLC:Z

.field private onRegisterRequest:Z

.field private registerFilter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.sec.spp.push"

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->DLC_LOG_PACKAGE:Ljava/lang/String;

    const-string v0, "com.sec.spp.push.dlc.writer.WriterService"

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->DLC_LOG_CLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->isBindToDLC:Z

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->onRegisterRequest:Z

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;

    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->dlcServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->registerFilter:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->registerFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".REGISTER_FILTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->registerFilter:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->callback:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Lcom/sec/spp/push/dlc/api/IDlcService;)Lcom/sec/spp/push/dlc/api/IDlcService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->dlcService:Lcom/sec/spp/push/dlc/api/IDlcService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->dlcRegisterReplyReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->dlcRegisterReplyReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->callback:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->isBindToDLC:Z

    return p1
.end method

.method static synthetic access$502(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->onRegisterRequest:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->registerFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->bindService(Ljava/lang/String;)V

    return-void
.end method

.method private bindService(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->isBindToDLC:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->unbindService()V

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->DLC_LOG_PACKAGE:Ljava/lang/String;

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->DLC_LOG_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->dlcServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->isBindToDLC:Z

    const-string v1, "DLCBinder"

    const-string v2, "bind"

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private unbindService()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->isBindToDLC:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DLCBinder"

    const-string v1, "unbind"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->dlcServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->isBindToDLC:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getDlcService()Lcom/sec/spp/push/dlc/api/IDlcService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->dlcService:Lcom/sec/spp/push/dlc/api/IDlcService;

    return-object v0
.end method

.method public isBindToDLC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->isBindToDLC:Z

    return v0
.end method

.method public registerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->registerFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->dlcRegisterReplyReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$2;

    invoke-direct {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$2;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)V

    iput-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->dlcRegisterReplyReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->dlcRegisterReplyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public sendRegisterRequestToDLC()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->dlcRegisterReplyReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->registerReceiver()V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->onRegisterRequest:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.spp.push.REQUEST_REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_PACKAGENAME"

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_INTENTFILTER"

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->registerFilter:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.spp.push"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->onRegisterRequest:Z

    const-string v1, "DLCBinder"

    const-string v2, "send register Request"

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send register Request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "DLCBinder"

    const-string v1, "already send register request"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
