.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$zO5Ti6HXgCyh_lswArP0I9cQ4Xc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/stackdivider/FocusedFrameView;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/FocusedFrameView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$zO5Ti6HXgCyh_lswArP0I9cQ4Xc;->f$0:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$zO5Ti6HXgCyh_lswArP0I9cQ4Xc;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$zO5Ti6HXgCyh_lswArP0I9cQ4Xc;->f$0:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$zO5Ti6HXgCyh_lswArP0I9cQ4Xc;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->lambda$setMinimizedDockStack$3(Lcom/android/systemui/stackdivider/FocusedFrameView;Z)V

    return-void
.end method
