.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$p9n2T_J7t1JAveMUEONAZdI-qLg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationEntryManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$p9n2T_J7t1JAveMUEONAZdI-qLg;->f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$p9n2T_J7t1JAveMUEONAZdI-qLg;->f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->lambda$setUpWithPresenter$0(Lcom/android/systemui/statusbar/NotificationEntryManager;Ljava/lang/Void;)V

    return-void
.end method
