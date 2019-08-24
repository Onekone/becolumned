switch cascades {
            case 0: case 1:
                switch chains {
                case 0: return snd_match_1; break;
                case 1: return snd_match_1; break;
                case 2: return snd_speed2; break;
                case 3: return snd_speed3; break;
                case 4: return snd_speed4; break;
                case 5: return snd_speed5; break;
                case 6: return snd_speed6; break;
                case 7: return snd_speed7; break;
                case 8: return snd_speed8; break;
                default: return snd_speed9; break;
                }            
            break;
            case 2: return snd_match_2; break;
            case 3: return snd_match_3; break;
            case 4: return snd_match_4; break;                        
            case 5: return snd_match_5; break;        
            default: return snd_match_6; break;
            }
