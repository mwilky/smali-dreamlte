.class Lcom/android/systemui/statusbar/KeyboardShortcuts$6;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;->handleShowKeyboardShortcuts(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->access$800(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->access$000(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->access$802(Lcom/android/systemui/statusbar/KeyboardShortcuts;Z)Z

    :cond_0
    return-void
.end method
