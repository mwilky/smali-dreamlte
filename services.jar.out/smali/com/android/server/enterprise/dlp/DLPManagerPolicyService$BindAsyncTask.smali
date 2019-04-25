.class Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
.super Landroid/os/AsyncTask;
.source "DLPManagerPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTIVATE:I = 0x2

.field public static final DELETE_APP_DATA:I = 0x3

.field public static final EXPIRY_AFTER:I = 0x1

.field public static final FEEDER_INSTALLATION:I


# instance fields
.field private opcode:I

.field final synthetic this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->opcode:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 8

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-static {v4, v3}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$600(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-static {v4, v3}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$700(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-static {v4, v3}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$600(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v5, "BindAsyncTask:doInBackground:Couldn\'t bind to SamsungDLPService"

    invoke-static {v0, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BindAsyncTask:Switching to opcode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->opcode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->opcode:I

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/samsung/android/knox/dlp/IFrameworkConnector;->deletePackageData(Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "ExpiryAfter"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v6, "Activate"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-interface {v4, v6, v0}, Lcom/samsung/android/knox/dlp/IFrameworkConnector;->configureDLPFileHandling(ZI)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "ExpiryAfter"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v6, 0x1

    invoke-interface {v4, v6, v0}, Lcom/samsung/android/knox/dlp/IFrameworkConnector;->configureDLPFileHandling(ZI)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/samsung/android/knox/dlp/IFrameworkConnector;->getDLPConfig(Ljava/lang/String;)Lcom/samsung/android/knox/dlp/DLPConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in bindAsyncTask: doInBackground exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException in bindAsyncTask:doInBackground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    nop

    :goto_1
    return-object v2

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
