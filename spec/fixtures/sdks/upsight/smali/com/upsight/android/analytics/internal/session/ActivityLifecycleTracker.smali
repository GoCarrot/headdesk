.class public Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private mSessionInitializer:Lcom/upsight/android/analytics/internal/session/SessionInitializer;

.field private mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;


# direct methods
.method public constructor <init>(Lcom/upsight/android/analytics/internal/session/ManualTracker;)V
    .locals 1
    .param p1, "tracker"    # Lcom/upsight/android/analytics/internal/session/ManualTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    .line 35
    new-instance v0, Lcom/upsight/android/analytics/internal/session/StandardSessionInitializer;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/session/StandardSessionInitializer;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mSessionInitializer:Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    .line 36
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->CREATED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mSessionInitializer:Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V

    .line 41
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->DESTROYED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mSessionInitializer:Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V

    .line 71
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->PAUSED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mSessionInitializer:Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V

    .line 56
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->RESUMED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mSessionInitializer:Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V

    .line 51
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->SAVE_INSTANCE_STATE:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mSessionInitializer:Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V

    .line 66
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->STARTED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mSessionInitializer:Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V

    .line 46
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mTracker:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->STOPPED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;->mSessionInitializer:Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V

    .line 61
    return-void
.end method
