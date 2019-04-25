.class final Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;
.super Landroid/os/Handler;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EnterpriseIDHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    if-eqz p1, :cond_5

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-static {v3, v0, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v3

    const-string v4, "EnterpriseIdentity"

    const-string v5, "In handleMessage: USERAUTHENTICATION"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    const-string v4, "EnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In handleMessage: The authenticator value is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    nop

    :try_start_0
    invoke-interface {v3, v1}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireToken(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    nop

    invoke-virtual {v4}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/container/AuthenticationConfig;->AUTHENTICATION_STATUS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "EnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In handleMessage: acquireToken(): status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, -0x12

    if-eq v6, v7, :cond_3

    const/16 v7, -0xf

    if-eq v6, v7, :cond_2

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    const/4 v8, 0x1

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$100(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ZI)V

    goto :goto_0

    :cond_2
    goto :goto_0

    :cond_3
    nop

    :goto_0
    goto :goto_1

    :cond_4
    const-string v5, "EnterpriseIdentity"

    const-string v6, "In handleMessage: acquireToken returns null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v4

    const-string v5, "EnterpriseIdentity"

    const-string v6, "In handleMessage: RemoteException"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
