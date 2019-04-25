.class Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;
.super Landroid/os/AsyncTask;
.source "RollbackRefreshOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeKeyStoreOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAliases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCerts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mKeystoreType:I

.field private mOperation:I

.field final synthetic this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mOperation:I

    iput p3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mKeystoreType:I

    iput-object p4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mAliases:Ljava/util/Set;

    iput-object p5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mCerts:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;)V

    return-void
.end method

.method private getPemMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->removeAliasSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->removeAliasSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_1

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    invoke-static {v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertX509ListToPem(Ljava/util/List;)[B

    move-result-object v7

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_2
    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private removeAliasSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "_#_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, "_#_"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->isInteger(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 18

    move-object/from16 v1, p0

    const/4 v0, 0x0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mOperation:I

    const/16 v9, 0x3f2

    const/4 v10, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v3, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-static {v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->access$300(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-static {v4, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->access$400(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mAliases:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->removeAliasSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    invoke-static {v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->splitCertTypeAlias(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v3

    return-object v0

    :cond_0
    aget-object v7, v6, v0

    aget-object v8, v6, v12

    iget v13, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mKeystoreType:I

    if-ne v13, v11, :cond_1

    new-instance v13, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    iget-object v14, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-static {v14}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->access$200(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14, v2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v13, v8, v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    iget v13, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mKeystoreType:I

    if-ne v13, v10, :cond_2

    iget-object v13, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-static {v13}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->access$500(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/security/KeyStore;

    move-result-object v13

    invoke-virtual {v13, v5, v9}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    monitor-exit v3

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    iget-object v3, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-static {v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->access$300(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    :try_start_1
    iget-object v3, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-static {v3, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->access$400(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mCerts:Ljava/util/Map;

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->getPemMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    move-object v14, v3

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object v7, v3

    iget v3, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mKeystoreType:I

    if-ne v3, v11, :cond_5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->splitCertTypeAlias(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    if-nez v15, :cond_4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v13

    return-object v0

    :cond_4
    aget-object v5, v15, v0

    aget-object v4, v15, v12

    iget-object v3, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-static {v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->access$200(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    const/16 v16, 0x1

    move-object v0, v7

    move/from16 v7, v16

    move-object/from16 v16, v8

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BII)Z

    goto :goto_3

    :cond_5
    move-object v0, v7

    move-object/from16 v16, v8

    iget v3, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mKeystoreType:I

    if-ne v3, v10, :cond_6

    iget-object v3, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-static {v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->access$500(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/security/KeyStore;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v3, v4, v5, v9, v12}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    :cond_6
    :goto_3
    nop

    move-object/from16 v8, v16

    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    monitor-exit v13

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_4
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
