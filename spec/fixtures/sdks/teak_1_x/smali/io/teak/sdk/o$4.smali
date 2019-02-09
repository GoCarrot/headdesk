.class final Lio/teak/sdk/o$4;
.super Lio/teak/sdk/b/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/teak/sdk/o;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p2, p0, Lio/teak/sdk/o$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/teak/sdk/o$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Lio/teak/sdk/b/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/b/d;)V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p1, Lio/teak/sdk/b/d;->b:Lio/teak/sdk/b/f;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p1, Lio/teak/sdk/b/d;->b:Lio/teak/sdk/b/f;

    iget-object v1, p0, Lio/teak/sdk/o$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/teak/sdk/o$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method
