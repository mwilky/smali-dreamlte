.class Lcom/android/server/spay/UpdateReceiver$2;
.super Landroid/os/Handler;
.source "UpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/spay/UpdateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/spay/UpdateReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/spay/UpdateReceiver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const-string v0, "UpdateReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x304ed112

    if-eq v3, v4, :cond_2

    const v4, 0x2f94f923

    if-eq v3, v4, :cond_1

    const v4, 0x5c1076e2

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v2, "UpdateReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "getdata_of_intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v2}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "getdata_of_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "getdata_of_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.spay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "UpdateReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " received : triggering PF Install"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    iget-object v3, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v3}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/spay/UpdateReceiver;->triggerPFInstall(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v2}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.android.spay"

    invoke-static {v2, v3}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_4
    const-string v2, "getdata_of_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.spaymini"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v2}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.android.spaymini"

    invoke-static {v2, v3}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_5
    const-string v2, "getdata_of_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.samsungpay.gear"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v2}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.android.samsungpay.gear"

    invoke-static {v2, v3}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    :cond_6
    const-string v2, "getdata_of_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.rajaampat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v2}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.android.rajaampat"

    invoke-static {v2, v3}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    :pswitch_1
    const-string v2, "UpdateReceiver"

    const-string v3, "ACTION_BOOT_COMPLETED received : triggering PF Install"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v2}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    iget-object v3, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v3}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/spay/UpdateReceiver;->triggerPFInstall(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v2}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.android.spay"

    invoke-static {v2, v3}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v2}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.android.spayfw"

    invoke-static {v2, v3}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v2}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.android.spaymini"

    invoke-static {v2, v3}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v2}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.android.samsungpay.gear"

    invoke-static {v2, v3}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v2}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.android.rajaampat"

    invoke-static {v2, v3}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
