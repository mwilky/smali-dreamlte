.class Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;
.super Landroid/database/ContentObserver;
.source "ServiceBoxSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->addSettingsObserver(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

.field final synthetic val$dbKey:Ljava/lang/String;

.field final synthetic val$def:Z

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;Landroid/os/Handler;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    iput-object p3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->val$dbKey:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->val$def:Z

    iput-object p5, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->val$dbKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->val$def:Z

    invoke-static {v0, v1, v2}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->access$000(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "ServiceBoxSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChanged() uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->access$100(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->val$pkgName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->access$200(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->access$200(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->val$pkgName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->sendRequestRemoteViewsBroadcast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->access$200(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->val$pkgName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->removeRemoteViews(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
