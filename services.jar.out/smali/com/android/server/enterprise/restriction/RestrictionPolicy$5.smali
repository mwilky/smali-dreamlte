.class Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$500(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "RestrictionPolicy"

    const-string/jumbo v5, "updateUsbMode failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$000(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$600(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v1, v4, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v5, v3, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v5

    invoke-static {v4, v3, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$100(Lcom/android/server/enterprise/restriction/RestrictionPolicy;IZ)V

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    invoke-static {v4, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$700(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Z)Z

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$800(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto/16 :goto_3

    :cond_1
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$500(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "updateUsbMode failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto/16 :goto_3

    :cond_2
    const-string/jumbo v1, "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v2, "RestrictionPolicy"

    const-string v3, "Network Policy update failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto/16 :goto_3

    :cond_4
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent.ACTION_USER_SWITCHED occurred!! action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "screenCaptureEnabled"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v6, v1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$900(Lcom/android/server/enterprise/restriction/RestrictionPolicy;IZ)Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "/data/system/enterprise.conf"

    invoke-static {v4, v3, v5}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_5
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$1000(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto :goto_3

    :cond_6
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$1100(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto :goto_3

    :cond_7
    const-string v1, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$1200(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    :cond_8
    :goto_3
    return-void
.end method
