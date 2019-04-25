.class final Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;
.super Landroid/os/Handler;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenericSSOHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/GenericSSOService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_12

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v6, -0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    :pswitch_1
    const/4 v0, 0x0

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-static {v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$300(Lcom/android/server/enterprise/sso/GenericSSOService;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    if-eqz v7, :cond_0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    move-object v6, v8

    :cond_0
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    if-ne v10, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v11, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-static {v11, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService;I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v11, :cond_3

    invoke-static {v11}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v14

    move-object v12, v14

    if-eqz v12, :cond_3

    sget-boolean v8, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "GenericSSOService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "In handleMessage: Enrolled vendor exists"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    :goto_1
    if-nez v0, :cond_8

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    iget-object v11, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-static {v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService;)V

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$700()Ljava/security/KeyStore;

    move-result-object v11

    invoke-virtual {v11}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "timakeystore"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "GenericSSOService"

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$700()Ljava/security/KeyStore;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$700()Ljava/security/KeyStore;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    const-string v12, "GenericSSOService"

    const-string v13, "In handleMessage: SecretKey is deleted from TIMAKeystore"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$700()Ljava/security/KeyStore;

    move-result-object v11

    invoke-virtual {v11}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "androidkeystore"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "KnoxSSOKey"

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$700()Ljava/security/KeyStore;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$700()Ljava/security/KeyStore;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    const-string v13, "/data/system/KnoxSSO_SCKF"

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v12

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    sget-boolean v12, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v12, :cond_7

    const-string v12, "GenericSSOService"

    const-string v13, "In handleMessage: KeyPair is deleted from AndroidKeyStore, and SecretKey file is deleted"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: Exception"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    :catch_1
    move-exception v0

    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: IOException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: KeyStoreException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: NoSuchAlgorithmException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_4
    move-exception v0

    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: SecurityException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_3
    goto/16 :goto_9

    :pswitch_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;

    iget v6, v2, Landroid/os/Message;->arg1:I

    iget v13, v2, Landroid/os/Message;->arg2:I

    const/4 v14, -0x1

    const/4 v15, 0x0

    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v7, v6, v13}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    move-object v12, v7

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getSSOConfigFile()[B

    move-result-object v7

    if-eqz v7, :cond_a

    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string v7, "GenericSSOService"

    const-string v8, "In handleMessage: Calling configureSSOByFile2"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v7, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getSSOConfigFile()[B

    move-result-object v8

    invoke-static {v7, v12, v8, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$100(Lcom/android/server/enterprise/sso/GenericSSOService;Lcom/samsung/android/knox/ContextInfo;[BI)I

    move-result v7

    const/4 v15, 0x1

    move-object/from16 v16, v5

    move-object v5, v12

    goto :goto_4

    :cond_a
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_b

    const-string v7, "GenericSSOService"

    const-string v8, "In handleMessage: Calling enrollSSOVendor2"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v7, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v11

    move-object v8, v12

    move-object/from16 v16, v5

    move-object v5, v12

    move v12, v13

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$200(Lcom/android/server/enterprise/sso/GenericSSOService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v7

    :goto_4
    if-gez v7, :cond_c

    const-string v8, "GenericSSOService"

    const-string v9, "In handleMessage: Enrollment is failed."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-nez v15, :cond_12

    if-nez v7, :cond_12

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getWhiteListPackages()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_12

    sget-boolean v8, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_d

    const-string v8, "GenericSSOService"

    const-string v9, "In handleMessage: getWhiteListPackages is not null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v8, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getWhiteListPackages()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v5, v9, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->addWhiteListPackages2(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)I

    move-result v7

    if-gez v7, :cond_12

    const-string v8, "GenericSSOService"

    const-string v9, "In handleMessage: Add whitelist failed. Unenrolling."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v5, v9, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->unenrollSSOVendor2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I

    goto :goto_9

    :pswitch_3
    move-object/from16 v16, v5

    :try_start_1
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v5, v0

    :try_start_2
    iget-object v0, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->acquireUserInfo(ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/UserInfo;

    move-result-object v0

    if-eqz v5, :cond_f

    if-eqz v0, :cond_e

    invoke-interface {v5, v0}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->userInfoSuccess(Lcom/samsung/android/knox/sso/common/UserInfo;)V

    goto :goto_5

    :cond_e
    invoke-interface {v5, v6}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_f
    :goto_5
    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v5, v16

    :goto_6
    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: RemoteException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :pswitch_4
    move-object/from16 v16, v5

    :try_start_3
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8

    move-object v5, v0

    :try_start_4
    iget-object v0, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-static {v0, v3, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$000(Lcom/android/server/enterprise/sso/GenericSSOService;ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v0

    if-eqz v5, :cond_11

    if-eqz v0, :cond_10

    invoke-interface {v5, v0}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->tokenInfoSuccess(Lcom/samsung/android/knox/sso/common/TokenInfo;)V

    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: Getting a token successfully"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_10
    invoke-interface {v5, v6}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: Failed to get a token"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_7

    :cond_11
    :goto_7
    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    move-object/from16 v5, v16

    :goto_8
    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: RemoteException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_12
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
