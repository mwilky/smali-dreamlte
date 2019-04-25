.class final Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;
.super Ljava/lang/Object;
.source "DeviceRootKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDataParser"
.end annotation


# instance fields
.field private mBigData:Ljava/lang/String;

.field private mBigDataType:I

.field private mCommandID:S

.field private mEnableTlv:Z

.field private mKeyType:I

.field private mRawData:[B

.field private mServiceName:Ljava/lang/String;

.field private mTlvTag:I

.field private mTlvValue:[B

.field private mVersion:B

.field final synthetic this$1:Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->this$1:Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mVersion:B

    iput-short p1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    iput p1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mKeyType:I

    iput p1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvTag:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mEnableTlv:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mServiceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvValue:[B

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mRawData:[B

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mBigData:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mBigDataType:I

    return-void
.end method

.method private ByteArrayToInt([B)I
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method private ByteArrayToShort([B)S
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1
.end method


# virtual methods
.method public ParserData([B)Z
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x4

    new-array v3, v2, [B

    array-length v4, p1

    const/16 v5, 0xc

    const/4 v6, 0x0

    if-ge v4, v5, :cond_0

    return v6

    :cond_0
    aget-byte v4, p1, v6

    iput-byte v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mVersion:B

    const/4 v4, 0x1

    invoke-static {p1, v4, v1, v6, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToShort([B)S

    move-result v0

    iput-short v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->this$1:Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;

    iget-object v0, v0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v7, "DEVROOT#Socket"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Version : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v9, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mVersion:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", CommandID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v9, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/android/server/DeviceRootKeyService;->access$100(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    iget-short v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    const/16 v7, 0x8

    const/4 v8, 0x3

    packed-switch v0, :pswitch_data_0

    return v6

    :pswitch_0
    return v4

    :pswitch_1
    invoke-static {p1, v8, v3, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mBigDataType:I

    invoke-static {p1, v7, v3, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v0

    new-array v2, v0, [B

    invoke-static {p1, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mBigData:Ljava/lang/String;

    return v4

    :pswitch_2
    invoke-static {p1, v7, v3, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v0

    new-array v2, v0, [B

    iput-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mRawData:[B

    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mRawData:[B

    invoke-static {p1, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return v4

    :pswitch_3
    invoke-static {p1, v8, v3, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvTag:I

    invoke-static {p1, v7, v3, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v0

    new-array v2, v0, [B

    iput-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvValue:[B

    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvValue:[B

    invoke-static {p1, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return v4

    :pswitch_4
    return v4

    :pswitch_5
    const/4 v0, 0x7

    aget-byte v0, p1, v0

    if-ne v0, v4, :cond_1

    iput-boolean v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mEnableTlv:Z

    goto :goto_0

    :cond_1
    iput-boolean v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mEnableTlv:Z

    :goto_0
    invoke-static {p1, v8, v3, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mKeyType:I

    invoke-static {p1, v7, v3, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v0

    new-array v2, v0, [B

    invoke-static {p1, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mServiceName:Ljava/lang/String;

    return v4

    :pswitch_6
    invoke-static {p1, v8, v3, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mKeyType:I

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBigData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mBigData:Ljava/lang/String;

    return-object v0
.end method

.method public getBigDataType()I
    .locals 1

    iget v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mBigDataType:I

    return v0
.end method

.method public getCommandId()S
    .locals 1

    iget-short v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    return v0
.end method

.method public getEnableTlv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mEnableTlv:Z

    return v0
.end method

.method public getKeyType()I
    .locals 1

    iget v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mKeyType:I

    return v0
.end method

.method public getRawData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mRawData:[B

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTlvTag()I
    .locals 1

    iget v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvTag:I

    return v0
.end method

.method public getTlvValue()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvValue:[B

    return-object v0
.end method

.method public getVersion()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mVersion:B

    return v0
.end method
