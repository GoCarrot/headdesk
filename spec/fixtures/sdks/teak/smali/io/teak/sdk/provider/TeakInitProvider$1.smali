.class final Lio/teak/sdk/provider/TeakInitProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/provider/TeakInitProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/provider/TeakInitProvider;


# direct methods
.method constructor <init>(Lio/teak/sdk/provider/TeakInitProvider;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lio/teak/sdk/provider/TeakInitProvider$1;->a:Lio/teak/sdk/provider/TeakInitProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    iget-object v0, p0, Lio/teak/sdk/provider/TeakInitProvider$1;->a:Lio/teak/sdk/provider/TeakInitProvider;

    invoke-static {v0, p1}, Lio/teak/sdk/provider/TeakInitProvider;->a(Lio/teak/sdk/provider/TeakInitProvider;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "Teak.InitProvider"

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {p1}, Lio/teak/sdk/Teak;->onCreate(Landroid/app/Activity;)V

    .line 73
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    iget-object v0, v0, Lio/teak/sdk/TeakInstance;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 78
    :cond_0
    invoke-static {}, Lio/teak/sdk/wrapper/unity/TeakUnity;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lio/teak/sdk/wrapper/unity/TeakUnity;->initialize()V

    .line 82
    :cond_1
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
