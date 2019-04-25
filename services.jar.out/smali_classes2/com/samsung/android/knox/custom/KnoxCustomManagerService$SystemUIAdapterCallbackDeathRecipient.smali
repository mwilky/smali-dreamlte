.class Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;
.super Ljava/lang/Object;
.source "KnoxCustomManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SystemUIAdapterCallbackDeathRecipient"
.end annotation


# instance fields
.field private key:I

.field final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;I)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    iput p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1800(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1800(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1800(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1800(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1800(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1902(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Z)Z

    :cond_2
    return-void
.end method
