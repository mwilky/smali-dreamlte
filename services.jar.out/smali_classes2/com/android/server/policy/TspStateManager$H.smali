.class final Lcom/android/server/policy/TspStateManager$H;
.super Landroid/os/Handler;
.source "TspStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/TspStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final CHANGE_WINDOW_POLICY:I = 0x1

.field public static final FOCUSED_INPUT_METHOD:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/TspStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/TspStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/TspStateManager$H;->this$0:Lcom/android/server/policy/TspStateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager$H;->this$0:Lcom/android/server/policy/TspStateManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-static {v0, v1}, Lcom/android/server/policy/TspStateManager;->access$300(Lcom/android/server/policy/TspStateManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager$H;->this$0:Lcom/android/server/policy/TspStateManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/TspStateManager;->access$200(Lcom/android/server/policy/TspStateManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
