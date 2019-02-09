.class public Lio/teak/sdk/wrapper/Application;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/Unobfuscable;


# instance fields
.field lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".AppEntry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lio/teak/sdk/wrapper/Application;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lio/teak/sdk/wrapper/Application$1;

    invoke-direct {v1, p0, v0}, Lio/teak/sdk/wrapper/Application$1;-><init>(Lio/teak/sdk/wrapper/Application;Ljava/lang/String;)V

    iput-object v1, p0, Lio/teak/sdk/wrapper/Application;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 62
    iget-object v0, p0, Lio/teak/sdk/wrapper/Application;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lio/teak/sdk/wrapper/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 64
    :cond_0
    return-void
.end method
