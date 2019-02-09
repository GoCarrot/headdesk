.class public final Lio/teak/sdk/b/g;
.super Lio/teak/sdk/l;
.source "SourceFile"


# instance fields
.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private h:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lio/teak/sdk/b/g$2;

    invoke-direct {v0}, Lio/teak/sdk/b/g$2;-><init>()V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)V

    .line 118
    return-void
.end method

.method constructor <init>(Lio/teak/sdk/b/e;Ljava/util/Map;)V
    .locals 7
    .param p1    # Lio/teak/sdk/b/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/teak/sdk/b/e;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    const-string v1, "gocarrot.com"

    const-string v2, "/me/profile"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lio/teak/sdk/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/e;Lio/teak/sdk/l$e;Z)V

    .line 27
    const-string v0, "context"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "User Profile value \'context\' is not a String"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    const-string v0, "string_attributes"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_1

    .line 31
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "User Profile value \'string_attributes\' is not a Map"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    const-string v0, "number_attributes"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_2

    .line 34
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "User Profile value \'number_attributes\' is not a Map"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_2
    const-string v0, "string_attributes"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 40
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 42
    sget-object v3, Lio/teak/sdk/e/c;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 47
    :cond_4
    const-string v1, "number_attributes"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 48
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 50
    sget-object v4, Lio/teak/sdk/e/c;->a:Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 54
    :cond_6
    iput-object v0, p0, Lio/teak/sdk/b/g;->e:Ljava/util/Map;

    .line 55
    iput-object v1, p0, Lio/teak/sdk/b/g;->f:Ljava/util/Map;

    .line 56
    const-string v0, "context"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/teak/sdk/b/g;->g:Ljava/lang/String;

    .line 57
    return-void
.end method

.method static synthetic a(Lio/teak/sdk/b/g;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lio/teak/sdk/b/g;->h:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic a(Lio/teak/sdk/b/g;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lio/teak/sdk/b/g;->h:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lio/teak/sdk/b/f;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lio/teak/sdk/b/g$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/teak/sdk/b/g$1;-><init>(Lio/teak/sdk/b/g;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 107
    :cond_0
    return-void
.end method

.method static synthetic b(Lio/teak/sdk/b/g;)Lio/teak/sdk/l$a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lio/teak/sdk/b/g;->c:Lio/teak/sdk/l$a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;D)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    iget-object v0, p0, Lio/teak/sdk/b/g;->f:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lio/teak/sdk/b/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 79
    iget-object v0, p0, Lio/teak/sdk/b/g;->e:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lio/teak/sdk/b/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lio/teak/sdk/b/g;->h:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lio/teak/sdk/b/g;->h:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lio/teak/sdk/b/g;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 66
    iget-object v0, p0, Lio/teak/sdk/b/g;->a:Ljava/util/Map;

    const-string v1, "context"

    iget-object v2, p0, Lio/teak/sdk/b/g;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lio/teak/sdk/b/g;->a:Ljava/util/Map;

    const-string v1, "string_attributes"

    iget-object v2, p0, Lio/teak/sdk/b/g;->e:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lio/teak/sdk/b/g;->a:Ljava/util/Map;

    const-string v1, "number_attributes"

    iget-object v2, p0, Lio/teak/sdk/b/g;->f:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-super {p0}, Lio/teak/sdk/l;->run()V

    .line 72
    :cond_0
    return-void
.end method
