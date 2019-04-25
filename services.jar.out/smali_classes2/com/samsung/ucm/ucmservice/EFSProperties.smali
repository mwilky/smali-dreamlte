.class public Lcom/samsung/ucm/ucmservice/EFSProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;,
        Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE_PATH:Ljava/lang/String; = "/efs/sec_efs"

.field private static final KEYGUARD_CONFIG_NAME:Ljava/lang/String; = "keyguardConfig"

.field private static final ODE_CONFIG_NAME:Ljava/lang/String; = "odeConfig"

.field public static final SCP_NONE:Ljava/lang/String; = "NONE"

.field public static final SCP_TYPES:[Ljava/lang/String;

.field public static final SCP_TYPE_A:Ljava/lang/String; = "SCP11a"

.field public static final SCP_TYPE_B:Ljava/lang/String; = "SCP11b"

.field public static final SCP_TYPE_CUSTOM:Ljava/lang/String; = "SCPCustom"

.field public static final STORAGE_TYPES:[Ljava/lang/String;

.field public static final STORAGE_TYPE_ESE:I = 0x0

.field public static final STORAGE_TYPE_ESE_1:I = 0x3

.field public static final STORAGE_TYPE_ESE_1_NAME:Ljava/lang/String; = "eSE1"

.field public static final STORAGE_TYPE_ESE_2:I = 0x6

.field public static final STORAGE_TYPE_ESE_2_NAME:Ljava/lang/String; = "eSE2"

.field public static final STORAGE_TYPE_ESE_NAME:Ljava/lang/String; = "eSE"

.field public static final STORAGE_TYPE_ETC:I = 0x9

.field public static final STORAGE_TYPE_ETC_NAME:Ljava/lang/String; = "ETC"

.field public static final STORAGE_TYPE_MAX:I = 0xa

.field public static final STORAGE_TYPE_MICROSD:I = 0x2

.field public static final STORAGE_TYPE_MICROSD_1:I = 0x5

.field public static final STORAGE_TYPE_MICROSD_1_NAME:Ljava/lang/String; = "SD1"

.field public static final STORAGE_TYPE_MICROSD_2:I = 0x8

.field public static final STORAGE_TYPE_MICROSD_2_NAME:Ljava/lang/String; = "SD2"

.field public static final STORAGE_TYPE_MICROSD_NAME:Ljava/lang/String; = "SD"

.field public static final STORAGE_TYPE_NONE:I = -0x1

.field public static final STORAGE_TYPE_UICC:I = 0x1

.field public static final STORAGE_TYPE_UICC_1:I = 0x4

.field public static final STORAGE_TYPE_UICC_1_NAME:Ljava/lang/String; = "SIM1"

.field public static final STORAGE_TYPE_UICC_2:I = 0x7

.field public static final STORAGE_TYPE_UICC_2_NAME:Ljava/lang/String; = "SIM2"

.field public static final STORAGE_TYPE_UICC_NAME:Ljava/lang/String; = "SIM"

.field private static final TAG:Ljava/lang/String; = "EFSProperties"


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "eSE"

    const-string v1, "SIM"

    const-string v2, "SD"

    const-string v3, "eSE1"

    const-string v4, "SIM1"

    const-string v5, "SD1"

    const-string v6, "eSE2"

    const-string v7, "SIM2"

    const-string v8, "SD2"

    const-string v9, "ETC"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    const-string v0, "NONE"

    const-string v1, "SCP11a"

    const-string v2, "SCP11b"

    const-string v3, "SCPCustom"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    array-length v1, p0

    shl-int/lit8 v2, v1, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xf0

    aget-byte v7, p0, v3

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v0, v6

    aput-char v6, v2, v4

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0xf

    aget-byte v7, p0, v3

    and-int/2addr v6, v7

    aget-char v6, v0, v6

    aput-char v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private static checkKeyguardProperty(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static deleteKeyguardConfig()Z
    .locals 4

    const/4 v0, 0x1

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string v3, "keyguardConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v3, "failed to delete the existing keyguard config file"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static deleteODEConfig()Z
    .locals 4

    const/4 v0, 0x1

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string/jumbo v3, "odeConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v3, "failed to delete the existing ODE config file"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static loadKeyguardConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .locals 11

    const-string v0, "load Keyguard config"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string v2, "keyguardConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v3, "Keyguard config file does not exist"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/4 v3, 0x0

    move-object v4, v2

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    new-instance v5, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    invoke-direct {v5}, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;-><init>()V

    move-object v4, v5

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v5

    if-lez v5, :cond_4

    new-array v6, v5, [B

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-eq v8, v5, :cond_1

    const-string v7, "EFSProperties"

    const-string v9, "csTemp length is not proper"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v2

    :cond_1
    :try_start_2
    iput-object v6, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    nop

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v6

    if-lez v6, :cond_3

    new-array v8, v6, [B

    iput-object v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    iget-object v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    invoke-virtual {v3, v8, v7, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    if-eq v7, v6, :cond_2

    const-string v8, "EFSProperties"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "read side mismatched, lengthAID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", readByteSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    nop

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v2

    :cond_2
    nop

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v7

    iput v7, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_2
    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :goto_3
    return-object v4

    :cond_3
    :try_start_6
    const-string v7, "EFSProperties"

    const-string v8, "AID length is not proper"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    nop

    nop

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-object v2

    :cond_4
    :try_start_8
    const-string v6, "EFSProperties"

    const-string v7, "CS Name length is not proper"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    nop

    nop

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    :catch_4
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_8

    :catch_5
    move-exception v5

    :try_start_a
    const-string v6, "loadKeyguardConfig : Exception"

    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    nop

    if-eqz v3, :cond_5

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_6

    :catch_6
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_6
    return-object v2

    :catch_7
    move-exception v5

    :try_start_c
    const-string v6, "loadKeyguardConfig : IOException"

    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    nop

    if-eqz v3, :cond_6

    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_7

    :catch_8
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_7
    return-object v2

    :goto_8
    if-eqz v3, :cond_7

    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_9

    :catch_9
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_9
    throw v2
.end method

.method public static loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .locals 19

    const-string v0, "load ODE config"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string/jumbo v2, "odeConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "ODE config file does not exist"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    const/4 v0, 0x0

    move-object v4, v0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v0

    new-instance v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    move-object v3, v0

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v0

    iput v0, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    :try_start_1
    new-array v6, v0, [B

    iput-object v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    iget-object v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v4, v6, v5, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-eq v6, v0, :cond_1

    const-string v7, "EFSProperties"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "read side mismatched, lengthAID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", readByteSize : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_4

    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6

    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v6, :cond_2

    :try_start_3
    new-array v7, v6, [B

    iput-object v7, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    invoke-virtual {v4, v7, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    if-eq v7, v6, :cond_2

    const-string v8, "EFSProperties"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "read side mismatched, lengthCsName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", readByteSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v7

    iput v7, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v7

    iput v7, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v7, :cond_3

    :try_start_5
    new-array v8, v7, [B

    iput-object v8, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    iget-object v8, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    invoke-virtual {v4, v8, v5, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-eq v8, v7, :cond_3

    const-string v9, "EFSProperties"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "read side mismatched, lenCertAlias : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", readByteSize : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz v8, :cond_4

    :try_start_7
    new-array v9, v8, [B

    iput-object v9, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    iget-object v9, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    invoke-virtual {v4, v9, v5, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    if-eq v9, v8, :cond_4

    const-string v10, "EFSProperties"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "read side mismatched, lenCertLocation : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", readByteSize : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v9
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    if-eqz v9, :cond_5

    :try_start_9
    new-array v10, v9, [B

    iput-object v10, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    iget-object v10, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    invoke-virtual {v4, v10, v5, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    if-eq v10, v9, :cond_5

    const-string v11, "EFSProperties"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "read side mismatched, lenConfiguratorPkgLen : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", readByteSize : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :cond_5
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v10
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    if-eqz v10, :cond_6

    :try_start_b
    new-array v11, v10, [B

    iput-object v11, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    iget-object v11, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    invoke-virtual {v4, v11, v5, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    if-eq v11, v10, :cond_6

    const-string v12, "EFSProperties"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "read side mismatched, lenConfiguratorDigestLen : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", readByteSize : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    :cond_6
    const/4 v11, 0x2

    :try_start_c
    new-array v12, v11, [B

    invoke-virtual {v4, v12, v5, v11}, Ljava/io/FileInputStream;->read([BII)I

    const/4 v11, 0x0

    aget-byte v13, v12, v5

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v11, v13

    const/4 v13, 0x1

    aget-byte v14, v12, v13
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v11, v14

    if-eqz v11, :cond_7

    :try_start_d
    new-array v14, v11, [B

    iput-object v14, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    iget-object v14, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    invoke-virtual {v4, v14, v5, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14

    if-eq v14, v11, :cond_7

    const-string v15, "EFSProperties"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read side mismatched, lenScpParamLen : "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", readByteSize : "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    :cond_7
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v5
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    if-lez v5, :cond_8

    :try_start_f
    new-array v13, v5, [B

    iput-object v13, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    iget-object v13, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v13

    if-eq v13, v5, :cond_8

    const-string v14, "EFSProperties"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    const-string/jumbo v0, "read side mismatched, lenPluginSignatureHash : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", readByteSize : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_1

    :cond_8
    move/from16 v16, v0

    :goto_1
    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    const/4 v13, -0x1

    if-ne v0, v13, :cond_9

    const/4 v13, 0x1

    :try_start_11
    iput v13, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    :goto_2
    move-object/from16 v18, v1

    goto :goto_3

    :cond_9
    const/4 v13, 0x1

    :try_start_12
    iput v0, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    if-gt v0, v13, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v13

    if-lez v13, :cond_b

    new-array v14, v13, [B

    iput-object v14, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    iget-object v14, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14

    if-eq v14, v13, :cond_b

    const-string v15, "EFSProperties"

    move/from16 v17, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    move-object/from16 v18, v1

    :try_start_13
    const-string/jumbo v1, "read side mismatched, lenDefaultLanguage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", readByteSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_b
    move-object/from16 v18, v1

    :goto_3
    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v18, v1

    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    :goto_5
    if-eqz v4, :cond_c

    :try_start_14
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_6
    return-object v3
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EFSProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static saveKeyguardConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z
    .locals 8

    const-string/jumbo v0, "save Keyguard config"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "KeyguardProperties is null"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->checkKeyguardProperty(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "checkKeyguardProperty false"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string v3, "keyguardConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v4, "failed to delete the existing Keyguard ODE config file"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    array-length v5, v4

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    array-length v7, v7

    if-lez v7, :cond_3

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    :goto_0
    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    const-string/jumbo v5, "saveKeyguardConfig : Exception"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_4
    const-string/jumbo v5, "saveKeyguardConfig : IOException"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    nop

    :cond_4
    return v0

    :goto_2
    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :cond_5
    :goto_3
    throw v4
.end method

.method public static saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z
    .locals 8

    const-string/jumbo v0, "save ODE config"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "ODEProperties is null"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string/jumbo v3, "odeConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v4, "failed to delete the existing ODE config file"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    array-length v4, v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    :goto_0
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    array-length v4, v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    :goto_1
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    array-length v4, v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    :goto_2
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    array-length v4, v4

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    :goto_3
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    array-length v4, v4

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_4

    :cond_6
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    :goto_4
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    array-length v4, v4

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_5

    :cond_7
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    :goto_5
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    array-length v4, v4

    if-lez v4, :cond_8

    const/4 v4, 0x2

    new-array v4, v4, [B

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    array-length v6, v6

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    array-length v7, v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_6

    :cond_8
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    :goto_6
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    array-length v4, v4

    if-lez v4, :cond_9

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_7

    :cond_9
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    :goto_7
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    array-length v4, v4

    if-lez v4, :cond_a

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    const/4 v0, 0x1

    goto :goto_8

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    goto :goto_9

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    :goto_8
    nop

    :goto_9
    if-eqz v3, :cond_b

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_a

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :cond_b
    :goto_a
    return v0
.end method
