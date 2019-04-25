.class Lcom/android/server/pm/PackageManagerService$30$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$30;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$30;

.field final synthetic val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$30;Lcom/android/server/pm/PackageManagerService$SdcardParams;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$30$1;->this$1:Lcom/android/server/pm/PackageManagerService$30;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$30$1;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$30$1;->this$1:Lcom/android/server/pm/PackageManagerService$30;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$30;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$30$1;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$SdcardParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$30$1;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$SdcardParams;->volumeUuid:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$30$1;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$SdcardParams;->moveId:I

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$30$1;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$SdcardParams;->callingUid:I

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$30$1;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$SdcardParams;->user:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$8000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$30$1;->this$1:Lcom/android/server/pm/PackageManagerService$30;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$30;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$30$1;->this$1:Lcom/android/server/pm/PackageManagerService$30;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$30;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$8100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$30$1;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget v2, v2, Lcom/android/server/pm/PackageManagerService$SdcardParams;->moveId:I

    const/4 v3, -0x6

    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$7500(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$8200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$8200()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    if-ne v1, v3, :cond_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$8200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$30$1;->this$1:Lcom/android/server/pm/PackageManagerService$30;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$30;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$8100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v3

    iget v4, v2, Lcom/android/server/pm/PackageManagerService$SdcardParams;->moveId:I

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$7500(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$8200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    :goto_1
    return-void
.end method
