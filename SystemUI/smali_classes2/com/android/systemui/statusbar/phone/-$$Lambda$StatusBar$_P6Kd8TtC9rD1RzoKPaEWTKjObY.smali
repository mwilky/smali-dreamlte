.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_P6Kd8TtC9rD1RzoKPaEWTKjObY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Landroid/content/Intent;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_P6Kd8TtC9rD1RzoKPaEWTKjObY;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_P6Kd8TtC9rD1RzoKPaEWTKjObY;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_P6Kd8TtC9rD1RzoKPaEWTKjObY;->f$2:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput p4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_P6Kd8TtC9rD1RzoKPaEWTKjObY;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_P6Kd8TtC9rD1RzoKPaEWTKjObY;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_P6Kd8TtC9rD1RzoKPaEWTKjObY;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_P6Kd8TtC9rD1RzoKPaEWTKjObY;->f$2:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_P6Kd8TtC9rD1RzoKPaEWTKjObY;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$startNotificationGutsIntent$47(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V

    return-void
.end method
