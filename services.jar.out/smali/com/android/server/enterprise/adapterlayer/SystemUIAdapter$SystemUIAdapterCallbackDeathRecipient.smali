.class Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;
.super Ljava/lang/Object;
.source "SystemUIAdapter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SystemUIAdapterCallbackDeathRecipient"
.end annotation


# instance fields
.field private key:I

.field final synthetic this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->key:I

    iput p2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->key:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied() key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->access$000(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->access$000(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->access$000(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->access$000(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->access$000(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->access$102(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;Z)Z

    :cond_2
    return-void
.end method
