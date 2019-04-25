.class Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticationToken"
.end annotation


# instance fields
.field private E0:[B

.field private P1:[B

.field private isDestroyed:Z

.field private secureMode:I

.field private syntheticPassword:Ljava/lang/String;

.field private syntheticPasswordBytes:[B


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->secureMode:I

    iput-boolean v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isDestroyed:Z

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$000(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->secureMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isDestroyed:Z

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object p1
.end method

.method protected static create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .locals 3

    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>()V

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->initialize([B[B)V

    return-object v0
.end method

.method protected static create(I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .locals 5

    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->RBG(I)[B

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "SyntheticPasswordManager.SDP"

    const-string v4, "Unexpected failure while generate random lump"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v2

    :cond_0
    invoke-direct {v0, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->initialize([B)V

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private ensureSyntheticPassword()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isDestroyed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The object has been already destroyed!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSyntheticPassword()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPasswordBytes:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPasswordBytes:[B

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPasswordBytes:[B

    return-object v0
.end method

.method private initialize([B)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    invoke-static {p1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-void
.end method

.method private initialize([B[B)V
    .locals 4

    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    nop

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$800()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$900()[B

    move-result-object v1

    new-array v2, v2, [[B

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B[[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-void
.end method


# virtual methods
.method public computeP0()[B
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$900()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    const/4 v3, 0x0

    new-array v3, v3, [[B

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveDiskEncryptionKey()[B
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->ensureSyntheticPassword()V

    nop

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->secureMode:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->generateFileSystemKey([BI)[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$300()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveGkPassword()[B
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->ensureSyntheticPassword()V

    nop

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->secureMode:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->generateGatekeeperPassword([BI)[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$200()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveKeyStorePassword()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->ensureSyntheticPassword()V

    nop

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->secureMode:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->generateKeystorePassword([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$100()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public derivePasswordHashFactor()[B
    .locals 4

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$500()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveSdpMasterKey()[B
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->ensureSyntheticPassword()V

    nop

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->secureMode:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->generateSdpMasterKey([BI)[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$600()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveVendorAuthSecret()[B
    .locals 4

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$400()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$700()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SyntheticPasswordManager.SDP"

    const-string v1, "Remove all traces of synthetic password"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPasswordBytes:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isDestroyed:Z

    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Available only for engineering mode"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Make sure to call through system process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMdfppMode()Z
    .locals 1

    iget v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->secureMode:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public recreate([B)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->decode([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->initialize([B)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->initialize([B[B)V

    :goto_0
    return-void
.end method
