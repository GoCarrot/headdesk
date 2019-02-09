.class public Lio/teak/sdk/service/JobService;
.super Lcom/firebase/jobdispatcher/JobService;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/Unobfuscable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/service/JobService$a;
    }
.end annotation


# static fields
.field public static final JOB_TYPE_KEY:Ljava/lang/String; = "JobService.JobType"


# instance fields
.field private final activeTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/teak/sdk/service/JobService$a;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/firebase/jobdispatcher/JobService;-><init>()V

    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/service/JobService;->executor:Ljava/util/concurrent/Executor;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/service/JobService;->activeTasks:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method jobTaskCompleted(Lcom/firebase/jobdispatcher/JobParameters;Z)V
    .locals 2
    .param p1, "jobParameters"    # Lcom/firebase/jobdispatcher/JobParameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "needsReschedule"    # Z

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2}, Lio/teak/sdk/service/JobService;->jobFinished(Lcom/firebase/jobdispatcher/JobParameters;Z)V

    .line 80
    if-nez p2, :cond_0

    .line 81
    iget-object v0, p0, Lio/teak/sdk/service/JobService;->activeTasks:Ljava/util/Map;

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    return-void
.end method

.method public onStartJob(Lcom/firebase/jobdispatcher/JobParameters;)Z
    .locals 7
    .param p1, "jobParameters"    # Lcom/firebase/jobdispatcher/JobParameters;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 38
    if-nez v4, :cond_0

    move v0, v1

    .line 62
    :goto_0
    return v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 44
    :try_start_0
    const-string v3, "Teak.Raven"

    const-string v5, "JobService.JobType"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    new-instance v3, Lio/teak/sdk/f/b;

    invoke-direct {v3, v4}, Lio/teak/sdk/f/b;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 55
    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    .line 56
    new-instance v3, Lio/teak/sdk/service/JobService$a;

    invoke-direct {v3, p0, v0, p1}, Lio/teak/sdk/service/JobService$a;-><init>(Lio/teak/sdk/service/JobService;Ljava/util/concurrent/Callable;Lcom/firebase/jobdispatcher/JobParameters;)V

    .line 57
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v4, "job_service"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "tag"

    aput-object v6, v5, v1

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getTag()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v5}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 58
    iget-object v0, p0, Lio/teak/sdk/service/JobService;->activeTasks:Ljava/util/Map;

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lio/teak/sdk/service/JobService;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move v0, v2

    .line 60
    goto :goto_0

    .line 46
    :cond_2
    :try_start_1
    const-string v3, "AnimatedNotificationCount"

    const-string v5, "JobService.JobType"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 47
    invoke-static {p1}, Lio/teak/sdk/b/b;->a(Lcom/firebase/jobdispatcher/JobParameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 51
    :catch_0
    move-exception v3

    .line 52
    sget-object v4, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v4, v3, v1}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;Z)V

    goto :goto_1

    .line 48
    :cond_3
    :try_start_2
    const-string v3, "DeviceScreenState.Job"

    const-string v5, "JobService.JobType"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    invoke-virtual {p0}, Lio/teak/sdk/service/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lio/teak/sdk/b/b;->a(Landroid/content/Context;Lcom/firebase/jobdispatcher/JobParameters;)Ljava/util/concurrent/Callable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method public onStopJob(Lcom/firebase/jobdispatcher/JobParameters;)Z
    .locals 3
    .param p1, "jobParameters"    # Lcom/firebase/jobdispatcher/JobParameters;

    .prologue
    .line 67
    iget-object v0, p0, Lio/teak/sdk/service/JobService;->activeTasks:Ljava/util/Map;

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/service/JobService$a;

    .line 68
    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lio/teak/sdk/service/JobService;->activeTasks:Ljava/util/Map;

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/teak/sdk/service/JobService$a;->cancel(Z)Z

    .line 72
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
