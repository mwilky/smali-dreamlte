.class public Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;
.super Lcom/samsung/accessory/manager/authentication/Authenticator;
.source "AuthenticatorClientImpl.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = true


# instance fields
.field private final COMMAND_ATQS:I

.field private final COMMAND_FIRMWARE:I

.field private final COMMAND_KEY_CHANGE:I

.field private final COMMAND_PUB_KEY:I

.field private final COMMAND_READ_ID:I

.field private final COMMAND_REQEXTRA:I

.field private final COMMAND_REQUNIFIED:I

.field private final COMMAND_REQURL:I

.field private final COMMAND_SEC_PUB_KEY:I

.field private final COMMAND_VERIFICATION:I

.field private final COMMAND_WRITE_ID:I

.field private final RETRY_TIME:I

.field private final SW_FAIL:[B

.field private final SW_SECURITY_ATTACK:[B

.field private final SW_SUCCESS:[B

.field private volatile isInterrupted:Z

.field private mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

.field private mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

.field private randNum:[B

.field private statusWord:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->RETRY_TIME:I

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_ATQS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_PUB_KEY:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_VERIFICATION:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_WRITE_ID:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_READ_ID:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_FIRMWARE:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_KEY_CHANGE:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_SEC_PUB_KEY:I

    const/16 v1, 0x9

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_REQURL:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_REQEXTRA:I

    const/16 v1, 0xb

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_REQUNIFIED:I

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_FAIL:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SECURITY_ATTACK:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->randNum:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    iput p2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mType:I

    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    return-void

    :array_0
    .array-data 1
        -0x70t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x69t
        -0x7ft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x69t
        -0x7et
    .end array-data
.end method

.method private authNFC(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onAuthenticationChallenge, mConnection is null!"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v3

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v2

    move-object v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received atqS Data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v4, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NOT_SUPPORT:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    array-length v4, v0

    if-ne v4, v2, :cond_d

    aget-byte v4, v0, v3

    if-ne v4, v2, :cond_2

    const/16 v2, 0x14

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_0

    :cond_2
    aget-byte v2, v0, v3

    const/16 v4, -0x4f

    if-ne v2, v4, :cond_3

    const/16 v2, 0x15

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_0

    :cond_3
    aget-byte v2, v0, v3

    const/16 v4, -0x4e

    if-ne v2, v4, :cond_4

    const/16 v2, 0x16

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_0

    :cond_4
    aget-byte v2, v0, v3

    const/16 v4, -0x20

    if-ne v2, v4, :cond_5

    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_5
    aget-byte v2, v0, v3

    const/16 v4, -0xf

    if-ne v2, v4, :cond_6

    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_6
    aget-byte v2, v0, v3

    const/16 v4, -0xe

    if-ne v2, v4, :cond_7

    const/16 v2, 0x29

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_7
    aget-byte v2, v0, v3

    const/16 v4, -0xd

    if-ne v2, v4, :cond_8

    const/16 v2, 0x2a

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_8
    aget-byte v2, v0, v3

    const/16 v4, -0xc

    if-ne v2, v4, :cond_9

    const/16 v2, 0x2b

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_9
    aget-byte v2, v0, v3

    const/16 v4, -0xb

    if-ne v2, v4, :cond_a

    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_a
    aget-byte v2, v0, v3

    const/16 v4, -0xa

    if-ne v2, v4, :cond_b

    const/16 v2, 0x2d

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_b
    aget-byte v2, v0, v3

    const/16 v4, -0x9

    if-ne v2, v4, :cond_c

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_c
    const/16 v2, 0x1b

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    return v3

    :cond_d
    array-length v4, v0

    const/16 v5, 0x10

    if-ne v4, v5, :cond_e

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4, v2, v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[B)Z

    move-result v4

    move v1, v4

    goto :goto_1

    :cond_e
    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v2, :cond_f

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v4, "atqS is not correct"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/16 v2, 0x19

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    return v3

    :cond_10
    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_11

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, " atqS is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_1
    if-nez v1, :cond_13

    const/16 v2, 0x1a

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v2, :cond_12

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v4, "atqS fail, call sendStopAuth()"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    return v3

    :cond_13
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged()Z

    move-result v4

    const/16 v5, 0xb

    const/16 v6, 0xa

    const/16 v7, 0x9

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-nez v4, :cond_1b

    invoke-direct {p0, p1, v9}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v1, v4

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    return v3

    :cond_14
    invoke-direct {p0, p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v1, v4

    if-nez v1, :cond_15

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    return v3

    :cond_15
    invoke-direct {p0, p1, v8}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v1, v4

    if-nez v1, :cond_17

    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v2, :cond_16

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v4, "Read id fail."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    return v3

    :cond_17
    iget v4, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v4, v2, :cond_18

    invoke-direct {p0, p1, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v1, v4

    if-nez v1, :cond_1a

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_1a

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v11, "Url is not exist."

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_18
    iget v4, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v4, v9, :cond_19

    invoke-direct {p0, p1, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v1, v4

    if-nez v1, :cond_1a

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_1a

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v11, "Extra is not exist."

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_19
    iget v4, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v4, v10, :cond_1a

    invoke-direct {p0, p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v1, v4

    if-nez v1, :cond_1a

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_1a

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v11, "3rd data is not exist."

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_2
    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_1b

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v11, "Success auth, call sendStopAuth()"

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange()Z

    move-result v4

    if-ne v4, v2, :cond_1d

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_1c

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "need to key change, retry authentication throught chaeged key"

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v4, 0x7

    invoke-direct {p0, p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v1, v4

    if-ne v1, v2, :cond_1d

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setKeyChanged(Z)V

    :cond_1d
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged()Z

    move-result v4

    if-ne v4, v2, :cond_25

    const/16 v4, 0x8

    invoke-direct {p0, p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v1, v4

    if-nez v1, :cond_1e

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    return v3

    :cond_1e
    invoke-direct {p0, p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v1, v4

    if-nez v1, :cond_1f

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    return v3

    :cond_1f
    invoke-direct {p0, p1, v8}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v1, v4

    if-nez v1, :cond_21

    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v2, :cond_20

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v4, "Read id fail."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    return v3

    :cond_21
    iget v4, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v4, v2, :cond_22

    invoke-direct {p0, p1, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v1, v4

    if-nez v1, :cond_24

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_24

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "url is not exist."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_22
    iget v4, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v4, v9, :cond_23

    invoke-direct {p0, p1, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v1, v4

    if-nez v1, :cond_24

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_24

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "extra is not exist."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_23
    iget v4, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v4, v10, :cond_24

    invoke-direct {p0, p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v1, v4

    if-nez v1, :cond_24

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_24

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "3rd data is not exist."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_3
    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_25

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "Success auth, call sendStopAuth()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/16 v4, 0xe

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v3
.end method

.method private authUsb(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onAuthenticationChallenge, mConnection is null!"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v3

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v1, v4

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "response from ccic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v4, v1

    if-ne v4, v2, :cond_1

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "need define error code"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4, v2, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[B)Z

    move-result v4

    move v0, v4

    if-nez v0, :cond_3

    const/16 v4, 0x1a

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "atqS fail, call sendStopAuth()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v3

    :cond_3
    const/4 v4, 0x2

    invoke-direct {p0, p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v5

    move v0, v5

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v3

    :cond_4
    const/4 v5, 0x3

    invoke-direct {p0, p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v6

    move v0, v6

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v3

    :cond_5
    const/4 v6, 0x5

    invoke-direct {p0, p1, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v6

    move v0, v6

    if-nez v0, :cond_7

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "Read id fail."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v3

    :cond_7
    iget v6, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v6, v2, :cond_9

    const/16 v4, 0x9

    invoke-direct {p0, p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v0, v4

    if-nez v0, :cond_d

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "Url is not exist."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v3

    :cond_9
    iget v6, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v6, v4, :cond_b

    const/16 v4, 0xa

    invoke-direct {p0, p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v0, v4

    if-nez v0, :cond_d

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_a

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "Extra is not exist."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v3

    :cond_b
    iget v4, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v4, v5, :cond_d

    const/16 v4, 0xb

    invoke-direct {p0, p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v0, v4

    if-nez v0, :cond_d

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_c

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "3rd data is not exist."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v3

    :cond_d
    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_e

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "Success auth, call sendStopAuth()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xe

    invoke-virtual {p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    :goto_0
    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v2
.end method

.method private authWirelessCharger(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onAuthenticationChallenge, mConnection is null!"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v3

    :cond_0
    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[B)Z

    move-result v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->openNode(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    move v0, v4

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "open wirelesscharger: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "open fail"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v3

    :cond_1
    const/4 v4, 0x2

    invoke-direct {p0, p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v0, v4

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v3

    :cond_2
    const/4 v4, 0x3

    invoke-direct {p0, p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v0, v4

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v3

    :cond_3
    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v6, "Success auth, call sendStopAuth()"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v6, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0xe

    invoke-virtual {p1, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    :goto_0
    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return v5

    nop

    :array_0
    .array-data 1
        0x0t
        0x55t
        0x6t
        0x8t
        0x5t
        0x20t
        0x1dt
        0x17t
        0x0t
        0x0t
        0x2t
        0x1t
        -0x62t
        -0x57t
        -0x7ft
        0x2t
    .end array-data
.end method

.method private checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .locals 6

    const/4 v0, 0x0

    sget-boolean v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_13

    array-length v2, p2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    array-length v2, p2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    aget-byte v1, p2, v1

    if-ne v1, v3, :cond_2

    const/16 v2, 0x14

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_0

    :cond_2
    const/16 v2, -0x50

    if-ne v1, v2, :cond_3

    const/16 v2, 0x15

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_0

    :cond_3
    const/16 v2, -0x4e

    if-ne v1, v2, :cond_4

    const/16 v2, 0x16

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_4
    const/16 v2, -0x20

    if-ne v1, v2, :cond_5

    const/16 v2, 0xd

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_5
    const/16 v2, -0xf

    if-ne v1, v2, :cond_6

    const/16 v2, 0x28

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_6
    const/16 v2, -0xe

    if-ne v1, v2, :cond_7

    const/16 v2, 0x29

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_7
    const/16 v2, -0xd

    if-ne v1, v2, :cond_8

    const/16 v2, 0x2a

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_8
    const/16 v2, -0xc

    if-ne v1, v2, :cond_9

    const/16 v2, 0x2b

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_9
    const/16 v2, -0xb

    if-ne v1, v2, :cond_a

    const/16 v2, 0x2c

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_a
    const/16 v2, -0xa

    if-ne v1, v2, :cond_b

    const/16 v2, 0x2d

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_b
    const/16 v2, -0x9

    if-ne v1, v2, :cond_c

    const/16 v2, 0x2e

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_c
    const/4 v2, -0x2

    if-ne v1, v2, :cond_d

    const/16 v2, 0x1c

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    :cond_d
    const/16 v2, 0x1b

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    :goto_0
    goto :goto_1

    :cond_e
    array-length v2, p2

    const/4 v4, 0x3

    if-le v2, v4, :cond_12

    array-length v2, p2

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    const/4 v5, 0x2

    invoke-static {p2, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v2, :cond_f

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Status Word: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    invoke-virtual {p0, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[B)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p3, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v1

    :cond_10
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SECURITY_ATTACK:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v2, 0x18

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v1

    :cond_11
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_FAIL:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0x17

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v1

    :cond_12
    :goto_1
    return v0

    :cond_13
    :goto_2
    const/16 v2, 0xc

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v1
.end method

.method private sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v4, "interrupted!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :cond_0
    const/16 v3, 0xe

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqUnified3rd()[B

    move-result-object v1

    const/4 v6, 0x0

    if-ge v6, v4, :cond_3

    :try_start_0
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v2, v4

    invoke-direct {p0, p2, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    move v0, v4

    if-nez v0, :cond_1

    return v5

    :cond_1
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setManagerURI([B)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraData([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :cond_3
    :goto_0
    goto/16 :goto_6

    :pswitch_1
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqExtra()[B

    move-result-object v1

    const/4 v6, 0x0

    if-ge v6, v4, :cond_5

    :try_start_1
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v2, v4

    invoke-direct {p0, p2, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    move v0, v4

    if-nez v0, :cond_4

    return v5

    :cond_4
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraData([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :cond_5
    :goto_1
    goto/16 :goto_6

    :pswitch_2
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqUrl()[B

    move-result-object v1

    const/4 v6, 0x0

    if-ge v6, v4, :cond_7

    :try_start_2
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v2, v4

    invoke-direct {p0, p2, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    move v0, v4

    if-nez v0, :cond_6

    return v5

    :cond_6
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setManagerURI([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :cond_7
    :goto_2
    goto/16 :goto_6

    :pswitch_3
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqPubKey()[B

    move-result-object v1

    const/4 v6, 0x0

    if-ge v6, v4, :cond_8

    :try_start_3
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v2, v4

    invoke-direct {p0, p2, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move v0, v4

    if-nez v0, :cond_8

    return v5

    :catch_3
    move-exception v4

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :cond_8
    goto/16 :goto_6

    :pswitch_4
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getKeyChange()[B

    move-result-object v1

    const/4 v6, 0x0

    if-ge v6, v4, :cond_9

    :try_start_4
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v2, v4

    invoke-direct {p0, p2, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move v0, v4

    if-nez v0, :cond_9

    return v5

    :catch_4
    move-exception v4

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :cond_9
    nop

    const/4 v0, 0x1

    goto/16 :goto_6

    :pswitch_5
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqFirmwareVersion()[B

    move-result-object v1

    move-object v6, v2

    move v2, v5

    :goto_3
    if-ge v2, v4, :cond_a

    :try_start_5
    sget-object v7, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Send Command "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_5
    move-exception v2

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :cond_a
    nop

    const/4 v0, 0x1

    nop

    move-object v2, v6

    goto/16 :goto_6

    :pswitch_6
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReadCoverId()[B

    move-result-object v1

    const/4 v6, 0x0

    if-ge v6, v4, :cond_c

    :try_start_6
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v2, v4

    invoke-direct {p0, p2, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    move v0, v4

    if-nez v0, :cond_b

    return v5

    :cond_b
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getSerialNumber()[B

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getSerialNumber()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraId([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception v4

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :cond_c
    :goto_4
    nop

    const/4 v0, 0x1

    goto/16 :goto_6

    :pswitch_7
    const/4 v0, 0x1

    goto/16 :goto_6

    :pswitch_8
    const/4 v6, 0x0

    if-ge v6, v4, :cond_d

    :try_start_7
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->makeRandomNumber()[B

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getRandNum()[B

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->randNum:[B

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->randNum:[B

    invoke-virtual {v4, v7}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->setRandNum([B)V

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getDataVerification()[B

    move-result-object v4

    move-object v1, v4

    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v2, v4

    invoke-direct {p0, p2, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    move v0, v4

    if-nez v0, :cond_d

    return v5

    :catch_7
    move-exception v4

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :cond_d
    goto :goto_6

    :pswitch_9
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqPubKey()[B

    move-result-object v1

    const/4 v6, 0x0

    if-ge v6, v4, :cond_f

    :try_start_8
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v2, v4

    invoke-direct {p0, p2, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    move v0, v4

    if-nez v0, :cond_e

    return v5

    :cond_e
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getPublicKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getPublicKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setPublicKey(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_5

    :catch_8
    move-exception v4

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :cond_f
    :goto_5
    nop

    :goto_6
    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive Command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "fail stop command"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
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

.method public onAuthenticationChallenge(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .locals 3

    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationChallenge, type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->authNFC(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->authUsb(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->authWirelessCharger(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method onInterrupted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    return-void
.end method

.method public setInterrupt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    return-void
.end method
