.class public Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "WirelessChargerConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$AdapterStateChangedHandler;
    }
.end annotation


# static fields
.field private static final BIT_CLEAR:I = 0x0

.field private static final STATE_READ:I = 0x2

.field private static final STATE_WRITE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

.field private mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

.field private final mReadTriggerReceiver:Landroid/content/BroadcastReceiver;

.field private msgState:I

.field readTriggerIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->readTriggerIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;-><init>(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mReadTriggerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    new-instance v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$AdapterStateChangedHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$AdapterStateChangedHandler;-><init>(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    return p1
.end method

.method private addOneByte([BI)[B
    .locals 4

    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-byte v3, p1, v2

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aput-byte v1, v0, p2

    return-object v0
.end method

.method private includeHeader([B)[B
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [B

    array-length v1, p1

    const/16 v2, 0xf

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aput-byte v3, v0, v3

    nop

    :goto_0
    move v1, v3

    if-ge v1, v2, :cond_1

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p1, v1

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    aput-byte v1, v0, v3

    :cond_1
    return-object v0
.end method

.method private sendStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    invoke-interface {v0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onStateChanged(I)V

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WirelessCharger State change : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    const-string v1, "StateChangedCallback is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const-string/jumbo v0, "null"

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onConnectionStateChanged(I)V

    :cond_0
    return v1
.end method

.method public disable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public disconnect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public enable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabledInternally()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public openNode(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->wirelesscharger_open()I

    move-result v0

    sget-object v1, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "register receiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mReadTriggerReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->readTriggerIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v1, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "open batt_misc ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v0, :cond_0

    sget-object v1, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "open fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public sendStopAuth()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    const-string v1, "close batt_misc"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_close()I

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregister receiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mReadTriggerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    return v0
.end method

.method public sendStopUsbAuth()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0xf

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data write msgState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite_batt([B)I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, -0x2

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    new-array v3, v1, [B

    const/4 v5, -0x1

    aput-byte v5, v3, v4

    array-length v4, p1

    if-eq v0, v4, :cond_0

    sget-object v1, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    const-string v4, "command write fail"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    sget-object v4, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSessionState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->getSessionState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    :goto_1
    iget v6, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    const/4 v7, 0x3

    if-eq v6, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->getSessionState()I

    move-result v6

    if-eq v6, v7, :cond_1

    :cond_2
    sget-object v6, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSessionState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->getSessionState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->getSessionState()I

    move-result v6

    const/4 v8, 0x5

    if-ne v6, v8, :cond_3

    return-object v2

    :cond_3
    const-wide/16 v9, 0x32

    :try_start_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v6

    :goto_2
    sget-object v6, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bit clear, msgState: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v6

    :goto_3
    iget v6, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    if-ne v6, v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->getSessionState()I

    move-result v6

    if-eq v6, v7, :cond_4

    :cond_5
    sget-object v1, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSessionState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->getSessionState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->getSessionState()I

    move-result v1

    if-ne v1, v8, :cond_6

    return-object v2

    :cond_6
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataRead_batt()[B

    move-result-object v1

    sget-object v4, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "api: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", receive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v4, v1

    invoke-direct {p0, v1, v4}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->addOneByte([BI)[B

    move-result-object v4

    return-object v4
.end method

.method public setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V

    return-void
.end method
