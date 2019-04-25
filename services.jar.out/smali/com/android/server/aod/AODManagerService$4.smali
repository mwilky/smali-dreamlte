.class Lcom/android/server/aod/AODManagerService$4;
.super Landroid/os/Handler;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$4;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "logs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$4;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2, v1}, Lcom/android/server/aod/AODManagerService;->access$1100(Lcom/android/server/aod/AODManagerService;Ljava/util/List;)V

    nop

    :goto_0
    return-void
.end method
