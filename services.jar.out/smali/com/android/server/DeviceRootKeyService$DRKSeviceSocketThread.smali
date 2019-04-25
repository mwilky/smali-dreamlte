.class final Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;
.super Ljava/lang/Object;
.source "DeviceRootKeyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceRootKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DRKSeviceSocketThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;,
        Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;
    }
.end annotation


# static fields
.field private static final BUF_MAX:I = 0x2000

.field private static final CMD_ID_ADD_TLV:I = 0x6

.field private static final CMD_ID_CREATE_SERVICE_KEY_SESSION:I = 0x3

.field private static final CMD_ID_GET_DEVICE_INFO:I = 0xc

.field private static final CMD_ID_GET_DRK_CERT:I = 0x8

.field private static final CMD_ID_GET_DRK_UID:I = 0x2

.field private static final CMD_ID_INIT_TLV:I = 0x5

.field private static final CMD_ID_IS_EXIST_DRK:I = 0x1

.field private static final CMD_ID_IS_SERVICE_READY:I = 0xa

.field private static final CMD_ID_PSEUDO_AT_CMD:I = 0x7

.field private static final CMD_ID_RELEASE_SERVICE_KEY_SESSION:I = 0x4

.field private static final CMD_ID_SELF_TEST_SERV_BLOB:I = 0x9

.field private static final CMD_ID_SEND_BIGDATA:I = 0xb

.field private static final DRK_SERIVCE_SOCKET_NAME:Ljava/lang/String; = "DeviceRootKeyService"

.field private static final DRK_SERVICE_PROTOCOL_VERSION:B = 0x1t

.field private static final ERR_FAILED_ACTION:S = 0x5s

.field private static final ERR_INVALID_COMMAND_ID:S = 0x3s

.field private static final ERR_INVALID_DATA:S = 0x1s

.field private static final ERR_INVALID_VERSION:S = 0x2s

.field private static final ERR_NOT_ERROR:S = 0x0s

.field private static final ERR_NOT_EXIST_DRK:S = 0x4s

.field private static final ERR_PERMISSION_DENIED:S = 0x6s

.field private static final MIN_IN_DATA_SIZE:I = 0xc

.field private static final MIN_OUT_DATA_SIZE:I = 0x9

.field private static final NOT_INITIALIZED:I = -0x1

.field private static final POS_COMMAND_ID:I = 0x1

.field private static final POS_IN_BOOL_VALUE:I = 0x7

.field private static final POS_IN_INT_VALUE:I = 0x3

.field private static final POS_IN_STRING_SIZE:I = 0x8

.field private static final POS_IN_STRING_VALUE:I = 0xc

.field private static final POS_OUT_DATA_VALUE:I = 0x9

.field private static final POS_OUT_ERR_VALUE:I = 0x3

.field private static final POS_OUT_SIZE_VALUE:I = 0x5

.field private static final POS_VERSION:I


# instance fields
.field private input:[B

.field private mLocalServerSocket:Landroid/net/LocalServerSocket;

.field private mLocalSocket:Landroid/net/LocalSocket;

.field private mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

.field final synthetic this$0:Lcom/android/server/DeviceRootKeyService;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceRootKeyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    return-void
.end method

.method private addTlv(I[B)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-direct {v0}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    move-result v0

    return v0
.end method

.method private executeCommand([BII)[B
    .locals 8

    new-instance v0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;-><init>(Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;)V

    new-instance v1, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;-><init>(Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;)V

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ParserData([B)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v4, "DEVROOT#Socket"

    const-string v5, "Parsing is failed."

    invoke-static {v2, v4, v5}, Lcom/android/server/DeviceRootKeyService;->access$000(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setVersion(B)V

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getCommandId()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setCommandID(S)V

    invoke-virtual {v1, v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->getOutputStreamData()[B

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getVersion()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setVersion(B)V

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getCommandId()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setCommandID(S)V

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getVersion()B

    move-result v2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v3, "DEVROOT#Socket"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version is not matched. Caller version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getVersion()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/DeviceRootKeyService;->access$000(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->getOutputStreamData()[B

    move-result-object v2

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getCommandId()S

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->getSocketPermissionInfo(I)I

    move-result v4

    invoke-static {v2, p2, p3, v3, v4}, Lcom/android/server/DeviceRootKeyService;->access$200(Lcom/android/server/DeviceRootKeyService;IIZI)Z

    move-result v2

    const/4 v4, 0x6

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v3, "DEVROOT#Socket"

    const-string v5, "Permission denied."

    invoke-static {v2, v3, v5}, Lcom/android/server/DeviceRootKeyService;->access$000(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->getOutputStreamData()[B

    move-result-object v2

    return-object v2

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getCommandId()S

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_3

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService;->getDeviceInfo()[B

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v7}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setRawData([B)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v1, v6}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_3

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getBigDataType()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getBigData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/DeviceRootKeyService;->access$600(Lcom/android/server/DeviceRootKeyService;ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v7}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v1, v6}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_3

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService;->isServiceReady()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v7}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v1, v6}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-static {v2, v3}, Lcom/android/server/DeviceRootKeyService;->access$302(Lcom/android/server/DeviceRootKeyService;Z)Z

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getEnableTlv()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/DeviceRootKeyService;->doSelfTestProvServiceBlob(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v2

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/DeviceRootKeyService;->doSelfTestProvServiceBlob(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-static {v3, v7}, Lcom/android/server/DeviceRootKeyService;->access$302(Lcom/android/server/DeviceRootKeyService;Z)Z

    if-eqz v2, :cond_7

    invoke-virtual {v1, v7}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setRawData([B)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v1, v6}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_3

    :pswitch_4
    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/DeviceRootKeyService;->getDeviceRootKeyCertificate(I)[B

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1, v7}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setRawData([B)V

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v1, v6}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_3

    :pswitch_5
    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getRawData()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2, v3}, Lcom/android/server/DeviceRootKeyService;->access$400(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-static {v3, v2}, Lcom/android/server/DeviceRootKeyService;->access$500(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v1, v7}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    invoke-virtual {v1, v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setRawData(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    invoke-virtual {v1, v6}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    :goto_1
    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v5, "DEVROOT#Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Respone :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/server/DeviceRootKeyService;->access$100(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v1, v4}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getTlvTag()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getTlvValue()[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->addTlv(I[B)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1, v7}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v1, v6}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_3

    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->initTlv()V

    invoke-virtual {v1, v7}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_3

    :pswitch_8
    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService;->releaseServiceKeySession()I

    invoke-virtual {v1, v7}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_3

    :pswitch_9
    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-static {v2, v3}, Lcom/android/server/DeviceRootKeyService;->access$302(Lcom/android/server/DeviceRootKeyService;Z)Z

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getEnableTlv()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/DeviceRootKeyService;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v2

    goto :goto_2

    :cond_c
    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/DeviceRootKeyService;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v2

    :goto_2
    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-static {v3, v7}, Lcom/android/server/DeviceRootKeyService;->access$302(Lcom/android/server/DeviceRootKeyService;Z)Z

    if-eqz v2, :cond_d

    invoke-virtual {v1, v7}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setRawData([B)V

    goto :goto_3

    :cond_d
    invoke-virtual {v1, v6}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_3

    :pswitch_a
    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/DeviceRootKeyService;->getDeviceRootKeyUID(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, v7}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setRawData(Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    invoke-virtual {v1, v6}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_3

    :pswitch_b
    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/DeviceRootKeyService;->isExistDeviceRootKey(I)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1, v7}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_3

    :cond_f
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    nop

    :goto_3
    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->getOutputStreamData()[B

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
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

.method private getSocketPermissionInfo(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x80

    return v0

    :pswitch_1
    const/16 v0, 0x40

    return v0

    :pswitch_2
    const/16 v0, 0x20

    return v0

    :pswitch_3
    const/16 v0, 0x10

    return v0

    :pswitch_4
    const/16 v0, 0x8

    return v0

    :pswitch_5
    const/4 v0, 0x4

    return v0

    :pswitch_6
    const/4 v0, 0x2

    return v0

    :pswitch_7
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initTlv()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    const-string v1, "DeviceRootKeyService"

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->input:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v2, "DEVROOT#Socket"

    const-string v3, "Failed to excute socket service."

    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceRootKeyService;->access$000(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v1, "DEVROOT#Socket"

    const-string v2, "Ready to connect."

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceRootKeyService;->access$100(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->input:[B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v4, "DEVROOT#Socket"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received data : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/DeviceRootKeyService;->access$100(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->input:[B

    invoke-virtual {v3}, Landroid/net/Credentials;->getPid()I

    move-result v5

    invoke-virtual {v3}, Landroid/net/Credentials;->getUid()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->executeCommand([BII)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->input:[B

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v2, v4

    if-lez v2, :cond_0

    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v5, "DEVROOT#Socket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/server/DeviceRootKeyService;->access$100(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v1, "DEVROOT#Socket"

    const-string v2, "Disconnected."

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceRootKeyService;->access$100(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v2, "DEVROOT#Socket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Socket connection may be closed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceRootKeyService;->access$100(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v1, "DEVROOT#Socket"

    const-string v2, "Socket thread has been stopped."

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceRootKeyService;->access$000(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
