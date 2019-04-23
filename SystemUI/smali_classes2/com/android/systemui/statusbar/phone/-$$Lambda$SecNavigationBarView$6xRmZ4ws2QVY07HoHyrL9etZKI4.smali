.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$6xRmZ4ws2QVY07HoHyrL9etZKI4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$6xRmZ4ws2QVY07HoHyrL9etZKI4;->f$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarView$6xRmZ4ws2QVY07HoHyrL9etZKI4;->f$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->lambda$updateRestartButton$6(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    return-void
.end method
