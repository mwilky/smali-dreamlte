.class public final Lcom/android/server/net/UrspNetworkManagementService;
.super Landroid/os/Handler;
.source "UrspNetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MSG_BASE:I = 0x2710

.field private static final MSG_SET_NETID_FOR_FOC:I = 0x2713

.field private static final MSG_SET_NETID_FOR_MDO:I = 0x2711

.field private static final MSG_SET_STATE_FOR_FOC:I = 0x2714

.field private static final MSG_SET_UID_RULES_FOR_FOC:I = 0x2715

.field private static final MSG_SET_UID_RULE_FOR_MDO:I = 0x2712

.field private static final TAG:Ljava/lang/String; = "UrspNms"

.field private static final VDBG:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v0, "start UrspNetworkManagementService"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UrspNms"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;-><init>(Lcom/android/server/net/UrspNetworkManagementService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "handlerThread.getLooper() returned null"

    invoke-static {v2}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/UrspNetworkManagementService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspNetIdForMdo(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/UrspNetworkManagementService;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspUidForMdo(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/net/UrspNetworkManagementService;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspRulesForFoc([I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/UrspNetworkManagementService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspNetIdForFoc(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/UrspNetworkManagementService;Z[II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspStateForFoc(Z[II)V

    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UrspNms"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static logn(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UrspNms"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setUrspNetIdForFoc(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspNetIdForFoc - NetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->setFocNetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UrspNms"

    const-string/jumbo v2, "setFocNetId exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setUrspNetIdForMdo(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspNetIdForMdo - NetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->setMdoNetId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "setUrspNetIdForMdo exception"

    invoke-static {v1}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setUrspRulesForFoc([I)V
    .locals 3

    const-string/jumbo v0, "setUrspRulesForFoc"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->clearFocUidList()V

    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->setFocUidList([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UrspNms"

    const-string/jumbo v2, "setFocUidList exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setUrspStateForFoc(Z[II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspStateForFoc - enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->flushFocTables()V

    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p3, p2}, Landroid/os/INetworkManagementService;->doDestroySockets(I[I)V

    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, v0, p2}, Landroid/os/INetworkManagementService;->setFocBlockList(Z[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UrspNms"

    const-string/jumbo v2, "setFocState::setFocBlockList true exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p3, p2}, Landroid/os/INetworkManagementService;->doDestroySockets(I[I)V

    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->flushFocTables()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "UrspNms"

    const-string/jumbo v2, "setFocState::setFocBlockList false exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private setUrspUidForMdo(ZI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspUidForMdo - enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setMdoUid(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "setUrspUidForMdo exception"

    invoke-static {v1}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public setUrspMode(IZ[II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspMode - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " + uids"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2714

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p4, v0, Landroid/os/Message;->arg2:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setUrspNetId(II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspNetId - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", NetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2713

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iput p2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public setUrspRule(IIZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspRule - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public setUrspRules(I[I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspRules - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
