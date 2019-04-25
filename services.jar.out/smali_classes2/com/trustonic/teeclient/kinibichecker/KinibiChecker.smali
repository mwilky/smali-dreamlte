.class public Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;
.super Ljava/lang/Object;
.source "KinibiChecker.java"


# static fields
.field private static final JELLY_BEAN_MR2:I = 0x12

.field private static final KIKAT:I = 0x13

.field private static final KIKAT_WATCH:I = 0x14

.field private static final LOLLIPOP:I = 0x15

.field private static final LOLLIPOP_MR1:I = 0x16

.field private static final MC_ERR_DAEMON_UNREACHABLE:I = 0xf

.field private static final MC_ERR_INVALID_OPERATION:I = 0x9

.field private static final MC_ERR_UNKNOWN:I = 0x6

.field public static final TAG:Ljava/lang/String; = "TEE-KCv2"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKCv2:Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

.field private mProductID:Ljava/lang/String;

.field private mSuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mProductID:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mSuid:Ljava/lang/String;

    return-void
.end method

.method private getStateCheck_TeeHistoricalIssue(Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/trustonic/teeclient/kinibichecker/TEEError;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/trustonic/teeclient/kinibichecker/TEEError;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v1, Lcom/trustonic/teeclient/kinibichecker/FindKinibiVersion;

    invoke-direct {v1, p1}, Lcom/trustonic/teeclient/kinibichecker/FindKinibiVersion;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/trustonic/teeclient/kinibichecker/FindKinibiVersion;->getResult()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v2, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_NOT_SUPPORTED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private isAvailable_NwdComponent()Z
    .locals 1

    invoke-direct {p0}, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->isMcDeviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->isRegistryAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAvailable_OTAComponent()Z
    .locals 1

    invoke-direct {p0}, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->isRootPaAvailable()Z

    move-result v0

    return v0
.end method

.method private isMcDeviceAvailable()Z
    .locals 1

    new-instance v0, Lcom/trustonic/teeclient/kinibichecker/FilesValidator;

    invoke-direct {v0}, Lcom/trustonic/teeclient/kinibichecker/FilesValidator;-><init>()V

    invoke-virtual {v0}, Lcom/trustonic/teeclient/kinibichecker/FilesValidator;->hasValidMcNodePermissions()Z

    move-result v0

    return v0
.end method

.method private isPolicyUpdateRequired()Z
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/trustonic/teeclient/kinibichecker/SELinuxValidator;

    invoke-direct {v1}, Lcom/trustonic/teeclient/kinibichecker/SELinuxValidator;-><init>()V

    invoke-virtual {v1}, Lcom/trustonic/teeclient/kinibichecker/SELinuxValidator;->getSELinuxVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0036"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    nop

    :cond_1
    :goto_0
    return v0

    :cond_2
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isRegistryAccessible()Z
    .locals 1

    new-instance v0, Lcom/trustonic/teeclient/kinibichecker/FilesValidator;

    invoke-direct {v0}, Lcom/trustonic/teeclient/kinibichecker/FilesValidator;-><init>()V

    invoke-virtual {v0}, Lcom/trustonic/teeclient/kinibichecker/FilesValidator;->hasValidMcRegistryPermissionsExt()Z

    move-result v0

    return v0
.end method

.method private isRootPaAvailable()Z
    .locals 1

    new-instance v0, Lcom/trustonic/teeclient/kinibichecker/FilesValidator;

    invoke-direct {v0}, Lcom/trustonic/teeclient/kinibichecker/FilesValidator;-><init>()V

    invoke-virtual {v0}, Lcom/trustonic/teeclient/kinibichecker/FilesValidator;->hasValidRootPA()Z

    move-result v0

    return v0
.end method

.method private isTDPAppInstalled(Landroid/content/Context;)Z
    .locals 1

    new-instance v0, Lcom/trustonic/teeclient/TeeClient;

    invoke-direct {v0, p1}, Lcom/trustonic/teeclient/TeeClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/trustonic/teeclient/TeeClient;->isTeeProxyServiceInstalled()Z

    move-result v0

    return v0
.end method

.method private parseErrorcode(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->isTDPAppInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mKCv2:Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

    sget-object v1, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_PROXY_INSTALLATION_REQUIRED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    const-string v2, "TDP is not installed"

    invoke-virtual {v0, v1, v2}, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->setTEEStatus(Lcom/trustonic/teeclient/kinibichecker/TEEError;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mKCv2:Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

    sget-object v1, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_NOT_SUPPORTED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TeeProxyservice error("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->setTEEStatus(Lcom/trustonic/teeclient/kinibichecker/TEEError;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->isPolicyUpdateRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mKCv2:Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

    sget-object v1, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_PROXY_UNREACHABLE_ERROR:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    sget-object v2, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_PROXY_UNREACHABLE_ERROR:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    invoke-virtual {v2}, Lcom/trustonic/teeclient/kinibichecker/TEEError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->setTEEStatus(Lcom/trustonic/teeclient/kinibichecker/TEEError;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mKCv2:Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

    sget-object v1, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_PROXY_LICENSE_REQUIRED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    sget-object v2, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_PROXY_LICENSE_REQUIRED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    invoke-virtual {v2}, Lcom/trustonic/teeclient/kinibichecker/TEEError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->setTEEStatus(Lcom/trustonic/teeclient/kinibichecker/TEEError;Ljava/lang/String;)V

    nop

    :goto_0
    invoke-direct {p0}, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->printTEECheckResult()V

    return-void
.end method

.method private printTEECheckResult()V
    .locals 3

    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mKCv2:Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

    iget-object v0, v0, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->cause:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "TEEError"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mKCv2:Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

    iget-object v2, v2, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->cause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setProductID(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mProductID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mProductID:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setSuid(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mSuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mSuid:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDeviceErrata()Ljava/util/EnumSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/trustonic/teeclient/kinibichecker/TEEError;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

    invoke-direct {v0}, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;-><init>()V

    iput-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mKCv2:Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

    invoke-direct {p0}, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->isAvailable_NwdComponent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mKCv2:Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

    sget-object v1, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_NOT_SUPPORTED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    const-string v2, "Cannot access to NWd Component"

    invoke-virtual {v0, v1, v2}, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->setTEEStatus(Lcom/trustonic/teeclient/kinibichecker/TEEError;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    invoke-direct {p0}, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->isAvailable_OTAComponent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mKCv2:Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

    sget-object v1, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_NOT_SUPPORTED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    const-string v2, "OTA component isn\'t available"

    invoke-virtual {v0, v1, v2}, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->setTEEStatus(Lcom/trustonic/teeclient/kinibichecker/TEEError;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    :try_start_0
    new-instance v0, Lcom/trustonic/teeclient/kinibichecker/KinibiCheckerJni;

    iget-object v1, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/trustonic/teeclient/kinibichecker/KinibiCheckerJni;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/trustonic/teeclient/kinibichecker/KinibiCheckerJni;->getReturnCode()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->parseErrorcode(I)V

    iget-object v2, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mKCv2:Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

    iget-object v2, v2, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->teeError:Ljava/util/EnumSet;

    return-object v2

    :cond_2
    invoke-virtual {v0}, Lcom/trustonic/teeclient/kinibichecker/KinibiCheckerJni;->getProductId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, ""

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/trustonic/teeclient/kinibichecker/KinibiCheckerJni;->getProductId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0}, Lcom/trustonic/teeclient/kinibichecker/KinibiCheckerJni;->getSuid()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, ""

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/trustonic/teeclient/kinibichecker/KinibiCheckerJni;->getSuid()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v2, :cond_5

    invoke-direct {p0, v2}, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->setProductID(Ljava/lang/String;)V

    :cond_5
    if-eqz v3, :cond_6

    invoke-direct {p0, v3}, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->setSuid(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    const-string v4, "00000000000000000000000000000000"

    const-string v5, "\\p{Z}"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mKCv2:Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

    sget-object v7, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_NOT_SUPPORTED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid SUID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->setTEEStatus(Lcom/trustonic/teeclient/kinibichecker/TEEError;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-direct {p0, v2}, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->getStateCheck_TeeHistoricalIssue(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mKCv2:Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

    sget-object v7, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_NOT_SUPPORTED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "historical issue:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->setTEEStatus(Lcom/trustonic/teeclient/kinibichecker/TEEError;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    :goto_2
    iget-object v4, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mKCv2:Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

    sget-object v5, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_NOT_SUPPORTED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    const-string v6, "Couldn\'t getVersion from SWd"

    invoke-virtual {v4, v5, v6}, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->setTEEStatus(Lcom/trustonic/teeclient/kinibichecker/TEEError;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mKCv2:Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

    sget-object v2, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_NOT_SUPPORTED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    const-string v3, "Cannot load client library"

    invoke-virtual {v1, v2, v3}, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->setTEEStatus(Lcom/trustonic/teeclient/kinibichecker/TEEError;Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mKCv2:Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

    sget-object v2, Lcom/trustonic/teeclient/kinibichecker/TEEError;->TEE_NOT_SUPPORTED:Lcom/trustonic/teeclient/kinibichecker/TEEError;

    const-string v3, "Cannot load client library"

    invoke-virtual {v1, v2, v3}, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->setTEEStatus(Lcom/trustonic/teeclient/kinibichecker/TEEError;Ljava/lang/String;)V

    :cond_a
    :goto_3
    nop

    :goto_4
    invoke-direct {p0}, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->printTEECheckResult()V

    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mKCv2:Lcom/trustonic/teeclient/kinibichecker/TEEStatus;

    iget-object v0, v0, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->teeError:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mProductID:Ljava/lang/String;

    return-object v0
.end method

.method public getSuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/KinibiChecker;->mSuid:Ljava/lang/String;

    return-object v0
.end method

.method public isTuiAvailable()Z
    .locals 1

    new-instance v0, Lcom/trustonic/teeclient/kinibichecker/FilesValidator;

    invoke-direct {v0}, Lcom/trustonic/teeclient/kinibichecker/FilesValidator;-><init>()V

    invoke-virtual {v0}, Lcom/trustonic/teeclient/kinibichecker/FilesValidator;->hasTUI()Z

    move-result v0

    return v0
.end method
