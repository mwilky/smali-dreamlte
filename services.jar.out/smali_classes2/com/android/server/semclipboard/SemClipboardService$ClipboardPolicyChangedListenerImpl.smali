.class Lcom/android/server/semclipboard/SemClipboardService$ClipboardPolicyChangedListenerImpl;
.super Ljava/lang/Object;
.source "SemClipboardService.java"

# interfaces
.implements Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/semclipboard/SemClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipboardPolicyChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/semclipboard/SemClipboardService;


# direct methods
.method private constructor <init>(Lcom/android/server/semclipboard/SemClipboardService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipboardPolicyChangedListenerImpl;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/semclipboard/SemClipboardService;Lcom/android/server/semclipboard/SemClipboardService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService$ClipboardPolicyChangedListenerImpl;-><init>(Lcom/android/server/semclipboard/SemClipboardService;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    const-string v0, "SemClipboardService"

    const-string v1, "ClipboardPolicyChangedListenerImpl.onChanged is called."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipboardPolicyChangedListenerImpl;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipboardPolicyChangedListenerImpl;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-virtual {v1}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$2400(Lcom/android/server/semclipboard/SemClipboardService;I)V

    return-void
.end method
