.class Lcom/android/server/desktopmode/CoverStateManager$4;
.super Ljava/lang/Object;
.source "CoverStateManager.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/CoverStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/CoverStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/CoverStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$4;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlocked()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$4;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$800(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/CoverStateManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "onBlocked(), !mAuthComplete"

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$4;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$600(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x10402a7

    :goto_0
    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$4;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$700(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$4;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$300(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$4;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$300(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const v0, 0x10402a3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$4;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$300(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    const v0, 0x10402a4

    goto :goto_0

    :cond_3
    const v0, 0x10402a5

    goto :goto_0

    :goto_1
    nop

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$4;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->access$500(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    invoke-static {}, Lcom/android/server/desktopmode/CoverStateManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "onBlocked(), Unknown reason"

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
