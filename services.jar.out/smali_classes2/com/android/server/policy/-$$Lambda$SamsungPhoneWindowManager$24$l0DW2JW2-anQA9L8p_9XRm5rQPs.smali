.class public final synthetic Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$24$l0DW2JW2-anQA9L8p_9XRm5rQPs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/SamsungPhoneWindowManager$24;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager$24;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$24$l0DW2JW2-anQA9L8p_9XRm5rQPs;->f$0:Lcom/android/server/policy/SamsungPhoneWindowManager$24;

    iput-boolean p2, p0, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$24$l0DW2JW2-anQA9L8p_9XRm5rQPs;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$24$l0DW2JW2-anQA9L8p_9XRm5rQPs;->f$0:Lcom/android/server/policy/SamsungPhoneWindowManager$24;

    iget-boolean v1, p0, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$24$l0DW2JW2-anQA9L8p_9XRm5rQPs;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$24;->lambda$onDesktopModeChanged$0(Lcom/android/server/policy/SamsungPhoneWindowManager$24;Z)V

    return-void
.end method
