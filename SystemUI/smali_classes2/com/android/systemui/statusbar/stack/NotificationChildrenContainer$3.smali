.class Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$3;
.super Ljava/lang/Object;
.source "NotificationChildrenContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

.field final synthetic val$removedOverflowNumber:Landroid/view/View;


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$3;->this$0:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$3;->val$removedOverflowNumber:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeTransientView(Landroid/view/View;)V

    return-void
.end method
