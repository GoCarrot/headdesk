.class final Lio/teak/sdk/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/b/a;->a(Ljava/net/URI;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/b/a;

.field private synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/a;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lio/teak/sdk/b/a$2;->a:Lio/teak/sdk/b/a;

    iput-object p2, p0, Lio/teak/sdk/b/a$2;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 127
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/b/a$2;->a:Lio/teak/sdk/b/a;

    invoke-static {v0}, Lio/teak/sdk/b/a;->a(Lio/teak/sdk/b/a;)Lio/teak/sdk/Teak$a;

    move-result-object v0

    iget-object v1, p0, Lio/teak/sdk/b/a$2;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lio/teak/sdk/Teak$a;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
