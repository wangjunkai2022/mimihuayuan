package com.comeback.data.ui.dn.bean;

import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class PlayUrl extends j {
    public List<MediaInfoSetEntity> MediaInfoSet;
    public List<?> NotExistFileIdSet;
    public String RequestId;

    /* loaded from: classes.dex */
    public class MediaInfoSetEntity {
        public String AdaptiveDynamicStreamingInfo;
        public String AnimatedGraphicsInfo;
        public BasicInfoEntity BasicInfo;
        public String FileId;
        public String ImageSpriteInfo;
        public String KeyFrameDescInfo;
        public MetaDataEntity MetaData;
        public String MiniProgramReviewInfo;
        public String SampleSnapshotInfo;
        public String SnapshotByTimeOffsetInfo;
        public String SubtitleInfo;
        public TranscodeInfoEntity TranscodeInfo;

        /* loaded from: classes.dex */
        public class BasicInfoEntity {
            public String Category;
            public int ClassId;
            public String ClassName;
            public String ClassPath;
            public String CoverUrl;
            public String CreateTime;
            public String Description;
            public String ExpireTime;
            public String IntranetMediaUrl;
            public String MediaUrl;
            public String Name;
            public SourceInfoEntity SourceInfo;
            public String Status;
            public String StorageClass;
            public String StorageRegion;
            public List<?> TagSet;
            public String Type;
            public String UpdateTime;
            public String Vid;

            /* loaded from: classes.dex */
            public class SourceInfoEntity {
                public String SourceContext;
                public String SourceType;

                public SourceInfoEntity() {
                }

                public String getSourceContext() {
                    return this.SourceContext;
                }

                public String getSourceType() {
                    return this.SourceType;
                }

                public void setSourceContext(String str) {
                    this.SourceContext = str;
                }

                public void setSourceType(String str) {
                    this.SourceType = str;
                }
            }

            public BasicInfoEntity() {
            }

            public String getCategory() {
                return this.Category;
            }

            public int getClassId() {
                return this.ClassId;
            }

            public String getClassName() {
                return this.ClassName;
            }

            public String getClassPath() {
                return this.ClassPath;
            }

            public String getCoverUrl() {
                return this.CoverUrl;
            }

            public String getCreateTime() {
                return this.CreateTime;
            }

            public String getDescription() {
                return this.Description;
            }

            public String getExpireTime() {
                return this.ExpireTime;
            }

            public String getIntranetMediaUrl() {
                return this.IntranetMediaUrl;
            }

            public String getMediaUrl() {
                return this.MediaUrl;
            }

            public String getName() {
                return this.Name;
            }

            public SourceInfoEntity getSourceInfo() {
                return this.SourceInfo;
            }

            public String getStatus() {
                return this.Status;
            }

            public String getStorageClass() {
                return this.StorageClass;
            }

            public String getStorageRegion() {
                return this.StorageRegion;
            }

            public List<?> getTagSet() {
                return this.TagSet;
            }

            public String getType() {
                return this.Type;
            }

            public String getUpdateTime() {
                return this.UpdateTime;
            }

            public String getVid() {
                return this.Vid;
            }

            public void setCategory(String str) {
                this.Category = str;
            }

            public void setClassId(int i2) {
                this.ClassId = i2;
            }

            public void setClassName(String str) {
                this.ClassName = str;
            }

            public void setClassPath(String str) {
                this.ClassPath = str;
            }

            public void setCoverUrl(String str) {
                this.CoverUrl = str;
            }

            public void setCreateTime(String str) {
                this.CreateTime = str;
            }

            public void setDescription(String str) {
                this.Description = str;
            }

            public void setExpireTime(String str) {
                this.ExpireTime = str;
            }

            public void setIntranetMediaUrl(String str) {
                this.IntranetMediaUrl = str;
            }

            public void setMediaUrl(String str) {
                this.MediaUrl = str;
            }

            public void setName(String str) {
                this.Name = str;
            }

            public void setSourceInfo(SourceInfoEntity sourceInfoEntity) {
                this.SourceInfo = sourceInfoEntity;
            }

            public void setStatus(String str) {
                this.Status = str;
            }

            public void setStorageClass(String str) {
                this.StorageClass = str;
            }

            public void setStorageRegion(String str) {
                this.StorageRegion = str;
            }

            public void setTagSet(List<?> list) {
                this.TagSet = list;
            }

            public void setType(String str) {
                this.Type = str;
            }

            public void setUpdateTime(String str) {
                this.UpdateTime = str;
            }

            public void setVid(String str) {
                this.Vid = str;
            }
        }

        /* loaded from: classes.dex */
        public class MetaDataEntity {
            public double AudioDuration;
            public List<AudioStreamSetEntity> AudioStreamSet;
            public int Bitrate;
            public String Container;
            public double Duration;
            public int Height;
            public int Rotate;
            public int Size;
            public double VideoDuration;
            public List<VideoStreamSetEntity> VideoStreamSet;
            public int Width;

            /* loaded from: classes.dex */
            public class AudioStreamSetEntity {
                public int Bitrate;
                public String Codec;
                public int SamplingRate;

                public AudioStreamSetEntity() {
                }

                public int getBitrate() {
                    return this.Bitrate;
                }

                public String getCodec() {
                    return this.Codec;
                }

                public int getSamplingRate() {
                    return this.SamplingRate;
                }

                public void setBitrate(int i2) {
                    this.Bitrate = i2;
                }

                public void setCodec(String str) {
                    this.Codec = str;
                }

                public void setSamplingRate(int i2) {
                    this.SamplingRate = i2;
                }
            }

            /* loaded from: classes.dex */
            public class VideoStreamSetEntity {
                public int Bitrate;
                public String Codec;
                public int Fps;
                public int Height;
                public int Width;

                public VideoStreamSetEntity() {
                }

                public int getBitrate() {
                    return this.Bitrate;
                }

                public String getCodec() {
                    return this.Codec;
                }

                public int getFps() {
                    return this.Fps;
                }

                public int getHeight() {
                    return this.Height;
                }

                public int getWidth() {
                    return this.Width;
                }

                public void setBitrate(int i2) {
                    this.Bitrate = i2;
                }

                public void setCodec(String str) {
                    this.Codec = str;
                }

                public void setFps(int i2) {
                    this.Fps = i2;
                }

                public void setHeight(int i2) {
                    this.Height = i2;
                }

                public void setWidth(int i2) {
                    this.Width = i2;
                }
            }

            public MetaDataEntity() {
            }

            public double getAudioDuration() {
                return this.AudioDuration;
            }

            public List<AudioStreamSetEntity> getAudioStreamSet() {
                return this.AudioStreamSet;
            }

            public int getBitrate() {
                return this.Bitrate;
            }

            public String getContainer() {
                return this.Container;
            }

            public double getDuration() {
                return this.Duration;
            }

            public int getHeight() {
                return this.Height;
            }

            public int getRotate() {
                return this.Rotate;
            }

            public int getSize() {
                return this.Size;
            }

            public double getVideoDuration() {
                return this.VideoDuration;
            }

            public List<VideoStreamSetEntity> getVideoStreamSet() {
                return this.VideoStreamSet;
            }

            public int getWidth() {
                return this.Width;
            }

            public void setAudioDuration(double d2) {
                this.AudioDuration = d2;
            }

            public void setAudioStreamSet(List<AudioStreamSetEntity> list) {
                this.AudioStreamSet = list;
            }

            public void setBitrate(int i2) {
                this.Bitrate = i2;
            }

            public void setContainer(String str) {
                this.Container = str;
            }

            public void setDuration(double d2) {
                this.Duration = d2;
            }

            public void setHeight(int i2) {
                this.Height = i2;
            }

            public void setRotate(int i2) {
                this.Rotate = i2;
            }

            public void setSize(int i2) {
                this.Size = i2;
            }

            public void setVideoDuration(double d2) {
                this.VideoDuration = d2;
            }

            public void setVideoStreamSet(List<VideoStreamSetEntity> list) {
                this.VideoStreamSet = list;
            }

            public void setWidth(int i2) {
                this.Width = i2;
            }
        }

        /* loaded from: classes.dex */
        public class TranscodeInfoEntity {
            public List<TranscodeSetEntity> TranscodeSet;

            /* loaded from: classes.dex */
            public class TranscodeSetEntity {
                public List<AudioStreamSetEntity> AudioStreamSet;
                public int Bitrate;
                public String Container;
                public int Definition;
                public double Duration;
                public int Height;
                public String Md5;
                public int Size;
                public String Url;
                public List<VideoStreamSetEntity> VideoStreamSet;
                public int Width;

                /* loaded from: classes.dex */
                public class AudioStreamSetEntity {
                    public int Bitrate;
                    public String Codec;
                    public int SamplingRate;

                    public AudioStreamSetEntity() {
                    }

                    public int getBitrate() {
                        return this.Bitrate;
                    }

                    public String getCodec() {
                        return this.Codec;
                    }

                    public int getSamplingRate() {
                        return this.SamplingRate;
                    }

                    public void setBitrate(int i2) {
                        this.Bitrate = i2;
                    }

                    public void setCodec(String str) {
                        this.Codec = str;
                    }

                    public void setSamplingRate(int i2) {
                        this.SamplingRate = i2;
                    }
                }

                /* loaded from: classes.dex */
                public class VideoStreamSetEntity {
                    public int Bitrate;
                    public String Codec;
                    public int Fps;
                    public int Height;
                    public int Width;

                    public VideoStreamSetEntity() {
                    }

                    public int getBitrate() {
                        return this.Bitrate;
                    }

                    public String getCodec() {
                        return this.Codec;
                    }

                    public int getFps() {
                        return this.Fps;
                    }

                    public int getHeight() {
                        return this.Height;
                    }

                    public int getWidth() {
                        return this.Width;
                    }

                    public void setBitrate(int i2) {
                        this.Bitrate = i2;
                    }

                    public void setCodec(String str) {
                        this.Codec = str;
                    }

                    public void setFps(int i2) {
                        this.Fps = i2;
                    }

                    public void setHeight(int i2) {
                        this.Height = i2;
                    }

                    public void setWidth(int i2) {
                        this.Width = i2;
                    }
                }

                public TranscodeSetEntity() {
                }

                public List<AudioStreamSetEntity> getAudioStreamSet() {
                    return this.AudioStreamSet;
                }

                public int getBitrate() {
                    return this.Bitrate;
                }

                public String getContainer() {
                    return this.Container;
                }

                public int getDefinition() {
                    return this.Definition;
                }

                public double getDuration() {
                    return this.Duration;
                }

                public int getHeight() {
                    return this.Height;
                }

                public String getMd5() {
                    return this.Md5;
                }

                public int getSize() {
                    return this.Size;
                }

                public String getUrl() {
                    return this.Url;
                }

                public List<VideoStreamSetEntity> getVideoStreamSet() {
                    return this.VideoStreamSet;
                }

                public int getWidth() {
                    return this.Width;
                }

                public void setAudioStreamSet(List<AudioStreamSetEntity> list) {
                    this.AudioStreamSet = list;
                }

                public void setBitrate(int i2) {
                    this.Bitrate = i2;
                }

                public void setContainer(String str) {
                    this.Container = str;
                }

                public void setDefinition(int i2) {
                    this.Definition = i2;
                }

                public void setDuration(double d2) {
                    this.Duration = d2;
                }

                public void setHeight(int i2) {
                    this.Height = i2;
                }

                public void setMd5(String str) {
                    this.Md5 = str;
                }

                public void setSize(int i2) {
                    this.Size = i2;
                }

                public void setUrl(String str) {
                    this.Url = str;
                }

                public void setVideoStreamSet(List<VideoStreamSetEntity> list) {
                    this.VideoStreamSet = list;
                }

                public void setWidth(int i2) {
                    this.Width = i2;
                }
            }

            public TranscodeInfoEntity() {
            }

            public List<TranscodeSetEntity> getTranscodeSet() {
                return this.TranscodeSet;
            }

            public void setTranscodeSet(List<TranscodeSetEntity> list) {
                this.TranscodeSet = list;
            }
        }

        public MediaInfoSetEntity() {
        }

        public String getAdaptiveDynamicStreamingInfo() {
            return this.AdaptiveDynamicStreamingInfo;
        }

        public String getAnimatedGraphicsInfo() {
            return this.AnimatedGraphicsInfo;
        }

        public BasicInfoEntity getBasicInfo() {
            return this.BasicInfo;
        }

        public String getFileId() {
            return this.FileId;
        }

        public String getImageSpriteInfo() {
            return this.ImageSpriteInfo;
        }

        public String getKeyFrameDescInfo() {
            return this.KeyFrameDescInfo;
        }

        public MetaDataEntity getMetaData() {
            return this.MetaData;
        }

        public String getMiniProgramReviewInfo() {
            return this.MiniProgramReviewInfo;
        }

        public String getSampleSnapshotInfo() {
            return this.SampleSnapshotInfo;
        }

        public String getSnapshotByTimeOffsetInfo() {
            return this.SnapshotByTimeOffsetInfo;
        }

        public String getSubtitleInfo() {
            return this.SubtitleInfo;
        }

        public TranscodeInfoEntity getTranscodeInfo() {
            return this.TranscodeInfo;
        }

        public void setAdaptiveDynamicStreamingInfo(String str) {
            this.AdaptiveDynamicStreamingInfo = str;
        }

        public void setAnimatedGraphicsInfo(String str) {
            this.AnimatedGraphicsInfo = str;
        }

        public void setBasicInfo(BasicInfoEntity basicInfoEntity) {
            this.BasicInfo = basicInfoEntity;
        }

        public void setFileId(String str) {
            this.FileId = str;
        }

        public void setImageSpriteInfo(String str) {
            this.ImageSpriteInfo = str;
        }

        public void setKeyFrameDescInfo(String str) {
            this.KeyFrameDescInfo = str;
        }

        public void setMetaData(MetaDataEntity metaDataEntity) {
            this.MetaData = metaDataEntity;
        }

        public void setMiniProgramReviewInfo(String str) {
            this.MiniProgramReviewInfo = str;
        }

        public void setSampleSnapshotInfo(String str) {
            this.SampleSnapshotInfo = str;
        }

        public void setSnapshotByTimeOffsetInfo(String str) {
            this.SnapshotByTimeOffsetInfo = str;
        }

        public void setSubtitleInfo(String str) {
            this.SubtitleInfo = str;
        }

        public void setTranscodeInfo(TranscodeInfoEntity transcodeInfoEntity) {
            this.TranscodeInfo = transcodeInfoEntity;
        }
    }

    public List<MediaInfoSetEntity> getMediaInfoSet() {
        return this.MediaInfoSet;
    }

    public List<?> getNotExistFileIdSet() {
        return this.NotExistFileIdSet;
    }

    public String getRequestId() {
        return this.RequestId;
    }

    public void setMediaInfoSet(List<MediaInfoSetEntity> list) {
        this.MediaInfoSet = list;
    }

    public void setNotExistFileIdSet(List<?> list) {
        this.NotExistFileIdSet = list;
    }

    public void setRequestId(String str) {
        this.RequestId = str;
    }
}
