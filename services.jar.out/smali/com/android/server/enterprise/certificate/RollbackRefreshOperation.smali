.class Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
.super Ljava/lang/Object;
.source "RollbackRefreshOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;,
        Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    }
.end annotation


# static fields
.field public static final INIT_ROLLBACK_REFRESH_PENDING_LIST:I = 0x3

.field private static final KEYSTORE_ADD_OPERATION:I = 0x0

.field private static final KEYSTORE_DELETE_OPERATION:I = 0x1

.field public static final KEYSTORE_REFRESH_OPERATION:I = 0x1

.field public static final KEYSTORE_ROLLBACK_OPERATION:I = 0x0

.field public static final KEYSTORE_ROLLBACK_REFRESH_OPERATION:I = 0x2

.field public static final REMOVE_ROLLBACK_REFRESH_PENDING_LIST:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RollbackRefreshOperation"


# instance fields
.field private final ALIAS_SEPARATOR:Ljava/lang/String;

.field private final mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

.field private mContext:Landroid/content/Context;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mKeyStoreLock:Ljava/lang/Object;

.field private mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mOperation:I

.field private mPendingKeystoreAction:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPriority:I

.field private mUserId:I

.field private mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_#_"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->ALIAS_SEPARATOR:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPriority:I

    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-direct {v0, p2}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    iput-object p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/security/KeyStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method private executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const/4 v3, 0x4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStoreAsUser(II)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStore(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshSystemKeyStoreAsUser(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const/4 v3, 0x4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStoreAsUser(II)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStore(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackSystemKeyStoreAsUser(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x3f2

    const/4 v7, 0x4

    if-ne v2, v7, :cond_0

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    if-ne v2, v8, :cond_1

    iget-object v8, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8, v1, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    :cond_1
    :goto_0
    if-nez v5, :cond_2

    return-object v4

    :cond_2
    array-length v8, v5

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_9

    aget-object v10, v5, v9

    const/4 v11, 0x0

    if-ne v2, v7, :cond_3

    invoke-virtual {v3, v10, v1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v11

    goto :goto_2

    :cond_3
    iget-object v12, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v6}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v11

    :goto_2
    if-nez v11, :cond_4

    return-object v4

    :cond_4
    invoke-static {v11}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    return-object v4

    :cond_5
    const/4 v13, 0x1

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509Certificate;

    if-nez v15, :cond_6

    goto :goto_3

    :cond_6
    iget-object v6, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v7, 0x3

    move/from16 v0, p3

    invoke-virtual {v6, v15, v7, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v6

    if-nez v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_#_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v13, v13, 0x1

    nop

    move-object/from16 v0, p0

    const/16 v6, 0x3f2

    const/4 v7, 0x4

    goto :goto_3

    :cond_8
    move/from16 v0, p3

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    const/16 v6, 0x3f2

    const/4 v7, 0x4

    goto :goto_1

    :cond_9
    move/from16 v0, p3

    return-object v4
.end method

.method private getUsersKeystoreUnlocked(I)[Ljava/lang/Integer;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return-object v2

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    goto :goto_1

    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    return-object v4
.end method

.method private isNativeKeyStoreUnlockedAsUser(I)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "RollbackRefreshOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore State Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private pruneDeletedContainerProfiles(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private refreshNativeKeyStore(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStoreAsUser(II)V

    return-void
.end method

.method private refreshNativeKeyStoreAsUser(II)V
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x3f2

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    move v2, p2

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ne p1, v3, :cond_1

    new-instance v3, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    iget-object v8, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    move-object v6, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    monitor-exit v5

    return-void

    :cond_2
    :goto_0
    const-string v3, "CACERT_"

    invoke-direct {p0, v3, p1, p2, v6}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v3, "USRCERT_"

    invoke-direct {p0, v3, p1, p2, v6}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;I)Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;

    const/4 v7, 0x1

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v3

    move-object v6, p0

    move v8, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v3, v0, v5, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private refreshSystemKeyStoreAsUser(I)V
    .locals 23

    move-object/from16 v8, p0

    move/from16 v9, p1

    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "systemDisabledList"

    invoke-virtual {v0, v1, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "systemPrevDisabledList"

    invoke-virtual {v0, v1, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "userRemovedList"

    invoke-virtual {v1, v2, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v13, v0

    :try_start_0
    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v1}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v15, v0

    :try_start_1
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :try_start_2
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_3
    invoke-interface {v0}, Landroid/security/IKeyChainService;->allSystemAliases()Ljava/util/List;

    move-result-object v1

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_1

    move-object/from16 v16, v1

    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v17, v3

    const/4 v3, 0x2

    invoke-virtual {v1, v6, v3, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Landroid/security/IKeyChainService;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    :cond_2
    :goto_2
    move-object/from16 v1, v16

    move-object/from16 v3, v17

    goto :goto_1

    :cond_3
    move-object/from16 v16, v1

    move-object/from16 v1, v16

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2, v5}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v3}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/security/cert/X509Certificate;

    move-object/from16 v18, v16

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    if-eqz v0, :cond_5

    move-object/from16 v20, v1

    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v21, v3

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    :cond_6
    :goto_5
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v3, v21

    goto :goto_4

    :cond_7
    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    goto :goto_3

    :cond_8
    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, v12, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;I)Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v16, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;

    const/4 v3, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, v16

    move-object v2, v8

    move-object v4, v0

    move-object/from16 v5, v17

    move-object/from16 v17, v6

    move v6, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;ILcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    move-object/from16 v1, v16

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v2, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v3, "systemDisabledList"

    invoke-virtual {v2, v3, v10, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    iget-object v2, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v3, "systemPrevDisabledList"

    invoke-virtual {v2, v3, v11, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    iget-object v2, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v3, "userRemovedList"

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_1
    move-exception v0

    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    :try_start_6
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_7
    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :goto_7
    goto :goto_9

    :goto_8
    :try_start_8
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/AssertionError; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    :try_start_9
    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshSystemKeyStoreAsUser("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_4
    move-exception v0

    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshSystemKeyStoreAsUser("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_5
    move-exception v0

    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_9
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_a
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private rollbackNativeKeyStore(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStoreAsUser(II)V

    return-void
.end method

.method private rollbackNativeKeyStoreAsUser(II)V
    .locals 17

    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v7, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v0, v9, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    const/16 v0, 0x3f2

    const/4 v1, 0x4

    move/from16 v11, p1

    if-ne v11, v1, :cond_0

    move v0, v8

    :cond_0
    move v12, v0

    iget-object v0, v7, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, v10, v12}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v15, v0

    invoke-direct {v7, v8}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_1

    iget-object v3, v7, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    goto :goto_0

    :cond_2
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v13, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance v16, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object v1, v7

    move v3, v11

    move-object v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    iget-object v0, v7, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, v14, v12}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;I)Ljava/util/List;

    iget-object v0, v7, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v9, v1, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    return-void
.end method

.method private rollbackSystemKeyStoreAsUser(I)V
    .locals 26

    move-object/from16 v8, p0

    move/from16 v9, p1

    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "systemDisabledList"

    invoke-virtual {v0, v1, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "systemPrevDisabledList"

    invoke-virtual {v0, v1, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "userRemovedList"

    invoke-virtual {v0, v1, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v6, v0

    :try_start_0
    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v1}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_15
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-object v15, v0

    :try_start_1
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_0

    :try_start_2
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-wide v1, v6

    goto/16 :goto_12

    :catch_0
    move-exception v0

    move-wide v1, v6

    goto/16 :goto_d

    :catch_1
    move-exception v0

    move-wide v1, v6

    goto/16 :goto_e

    :catch_2
    move-exception v0

    move-wide v1, v6

    goto/16 :goto_f

    :cond_0
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_6

    :try_start_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v3}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v4

    move-object/from16 v16, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/security/cert/X509Certificate;

    move-object/from16 v18, v17

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    if-eqz v0, :cond_2

    move-object/from16 v20, v1

    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v21, v3

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-interface {v11, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :cond_2
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    :cond_3
    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v3, v21

    goto :goto_1

    :cond_4
    move-object/from16 v20, v1

    goto :goto_3

    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v20, v1

    :goto_3
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide v1, v6

    goto/16 :goto_c

    :catch_3
    move-exception v0

    move-wide/from16 v24, v6

    goto/16 :goto_7

    :catch_4
    move-exception v0

    move-wide/from16 v24, v6

    goto/16 :goto_8

    :catch_5
    move-exception v0

    move-wide/from16 v24, v6

    goto/16 :goto_a

    :cond_6
    move-object/from16 v16, v0

    :try_start_5
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_7

    :try_start_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v10, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :cond_7
    :try_start_7
    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, v12, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_a

    :try_start_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_8

    move-object/from16 v22, v0

    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v23, v1

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v12, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    :cond_8
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    :cond_9
    :goto_6
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    goto :goto_5

    :cond_a
    move-object/from16 v22, v0

    :try_start_9
    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, v14, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;I)Ljava/util/List;

    new-instance v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x0

    move-object v1, v0

    move-object v2, v8

    move-object/from16 v18, v5

    move-object v5, v13

    move-wide/from16 v24, v6

    move v6, v9

    move-object/from16 v7, v17

    :try_start_a
    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;ILcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "systemDisabledList"

    invoke-virtual {v1, v2, v10, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "systemPrevDisabledList"

    invoke-virtual {v1, v2, v11, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "userRemovedList"

    invoke-virtual {v1, v2, v12, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/AssertionError; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/16 :goto_b

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-wide v1, v6

    goto/16 :goto_c

    :catch_9
    move-exception v0

    move-wide/from16 v24, v6

    :goto_7
    :try_start_c
    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_a
    move-exception v0

    move-wide/from16 v24, v6

    :goto_8
    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_9
    :try_start_d
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/AssertionError; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception v0

    move-wide/from16 v1, v24

    goto/16 :goto_12

    :catch_b
    move-exception v0

    move-wide/from16 v1, v24

    goto :goto_d

    :catch_c
    move-exception v0

    move-wide/from16 v1, v24

    goto/16 :goto_e

    :catch_d
    move-exception v0

    move-wide/from16 v1, v24

    goto/16 :goto_f

    :catchall_4
    move-exception v0

    move-wide/from16 v1, v24

    goto :goto_c

    :catch_e
    move-exception v0

    move-wide/from16 v24, v6

    :goto_a
    :try_start_e
    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :try_start_f
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_11
    .catch Ljava/lang/AssertionError; {:try_start_f .. :try_end_f} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :goto_b
    nop

    move-wide/from16 v1, v24

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_11

    :catchall_5
    move-exception v0

    move-wide/from16 v1, v24

    goto/16 :goto_12

    :catch_f
    move-exception v0

    move-wide/from16 v1, v24

    goto :goto_d

    :catch_10
    move-exception v0

    move-wide/from16 v1, v24

    goto :goto_e

    :catch_11
    move-exception v0

    move-wide/from16 v1, v24

    goto :goto_f

    :catchall_6
    move-exception v0

    move-wide/from16 v1, v24

    :goto_c
    :try_start_10
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v0
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_14
    .catch Ljava/lang/AssertionError; {:try_start_10 .. :try_end_10} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_12
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :catch_12
    move-exception v0

    goto :goto_d

    :catch_13
    move-exception v0

    goto :goto_e

    :catch_14
    move-exception v0

    goto :goto_f

    :catchall_7
    move-exception v0

    move-wide v1, v6

    goto :goto_12

    :catch_15
    move-exception v0

    move-wide v1, v6

    :goto_d
    :try_start_11
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catch_16
    move-exception v0

    move-wide v1, v6

    :goto_e
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catch_17
    move-exception v0

    move-wide v1, v6

    :goto_f
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :goto_10
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_11
    nop

    return-void

    :catchall_8
    move-exception v0

    :goto_12
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private selectNativeKeystoreUid(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string/jumbo v0, "nativeRemovedList_wifi"

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const-string/jumbo v0, "nativeRemovedList"

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public execute(II)V
    .locals 10

    iput p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mOperation:I

    iput p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    iget v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getUsersKeystoreUnlocked(I)[Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersInfo()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    if-nez v3, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    iget v6, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    if-ne v5, v6, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->pruneDeletedContainerProfiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_4
    iget v6, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mOperation:I

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V

    nop

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget-object v8, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendIntentToSettings(I)V

    goto :goto_3

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method hasPendingActionForUser(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method initPendingActionList()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method removeUserIdFromPendingList(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
